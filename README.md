# redux query deep dive

## overview

일반적으로 데이터를 읽어오는 `get` 형태의 API의 호출의 경우 `query`를 사용하고, 그 이외의 케이스의 경우는 `mutation`을 사용해야 함

> "이외의 케이스"는 결국 cache가 무효화 되는 케이스를 말함

기본적으로 RTK Qeury는 [fetchBaseQeury](https://redux-toolkit.js.org/rtk-query/api/fetchBaseQuery)를 제공해주는데, 이 함수는 fetch API를 간단하게 wrapping하여 request headers를 다루고 response를 parsing하는 기능을 제공함

## endpoints

query endpoints는 `createApi`의 endpoints 섹션 내에서 객체를 반환하며, `builder.query()` 메서드를 사용하여 필드를 정의해 준다

query callback은 하나의 매개변수를 받기 때문에 n개의 매개변수를 전달하기 위해서는 객체형태로 전달해야 한다

query endpoints는 response를 caching하기 전에 데이터를 가공할 수 있으며, cache를 식별할 수 있는 `tags`를 정의하고 cache 항목이 추가/제거될 때 추가 로직을 제공하는 cache lifecycle callback을 제공한다

```js
// Or from '@reduxjs/toolkit/query/react'
import { createApi, fetchBaseQuery } from '@reduxjs/toolkit/query';

const api = createApi({
  baseQuery: fetchBaseQuery({
    baseUrl: '/',
  }),
  tagTypes: ['Post'],
  endpoints: (builder) => ({
    // The query accepts a number and returns a Post
    getPost: builder.query({
      // note: an optional `queryFn` may be used in place of `query`
      query: (id) => ({ url: `post/${id}` }),
      // Pick out data and prevent nested properties in a hook or selector
      transformResponse: (response, meta, arg) => response.data,
      // Pick out errors and prevent nested properties in a hook or selector
      transformErrorResponse: (response, meta, arg) => response.status,
      providesTags: (result, error, id) => [{ type: 'Post', id }],
      // The 2nd parameter is the destructured `QueryLifecycleApi`
      async onQueryStarted(
        arg,
        {
          dispatch,
          getState,
          extra,
          requestId,
          queryFulfilled,
          getCacheEntry,
          updateCachedData,
        }
      ) {},
      // The 2nd parameter is the destructured `QueryCacheLifecycleApi`
      async onCacheEntryAdded(
        arg,
        {
          dispatch,
          getState,
          extra,
          requestId,
          cacheEntryRemoved,
          cacheDataLoaded,
          getCacheEntry,
          updateCachedData,
        }
      ) {},
    }),
  }),
});
```

## queries with react hooks

hooks은 서비스 정의의 `endpoint`이름에 따라 자동으로 생성된다

예를 들어, `getPost: builder.query()`이 있는 endpoint 필드에서는 `useGetPostQuery`라는 이름의 훅을 자동으로 생성한다

### hook types

RTK Query가 제공해주는 5가지 훅에 대해 알아보도록 하자

1. `useQuery`

가장 핵심적인 훅으로 `useQuerySubscription`와 `useQueryState`를 조합하여 만들어진 훅이다

endpoint에서 자동으로 data fetching을 trigger하고 컴포넌트를 캐시된 데이터에 "구독(subscribe)"하게 하며, 요청 상태와 캐시된 데이터를 redux store에서 읽어 온다

2. `useQuerySubscription`

`refech`함수를 반환하고 모든 훅의 옵션을 허용한다

endpoint에서 data fetching을 자동으로 trigger하고 컴포넌트를 캐시된 데이터에 구독하게 한다

3. `useQueryState`

쿼리 상태를 반환하고 `skip`과 `selectFromResult`를 허용하며, redux store에서 요청 상태와 캐시된 데이터를 읽어 온다

4. `useLazyQuery`

`trigger`함수, 쿼리 결과, 마지막 promise 정보를 담은 tuple을 반환한다

`useQuery`와 비슷해보이지만 data fetching이 일어날 때 수동제어가 가능하다는 차이점이 있다

> `preferCacheValue`를 사용하여, 캐시값을 우선적으로 사용할 수 있다

5. `useLazyQuerySubscription`

`trigger`함수, 마지막 promise 정보를 담은 tuple을 반환한다

`useQuery`와 비슷해보이지만 data fetching이 일어날 때 수동제어가 가능하다는 차이점이 있다

> `preferCacheValue`를 사용하여, 캐시값을 우선적으로 사용할 수 있다

### query hook options

query hook은 `(queryArg?, queryOptions?)` 두 개의 params을 받을 수 있다

`queryArg`는 URL을 생성하기 위해 기본 `query` 콜백에 전달된다

`queryOptions`는 data fetching을 제어하는데 사용할 수 있는 매개변수를 받는다

- `skip` : 해당 렌더링에 대한 쿼리 실행을 'skip'하도록 허용한다 (기본값 `false`)

- `pollingInterval` : 특정 시간간격(ms)마다 refetch를 허용한다 (기본값 `0(off)`)

- `selectFromResult` : (TBD)

- `refetchOnMountOrArgChange` : mount시 항상 강제로 쿼리를 다시 하도록 허용한다 (`true`일 때) 혹은 `number`가 제공되었을 때에는 해당 시간(s)이 경과한 후 동일한 캐시에 대한 마지막 쿼리를 다시 한다 (기본값 `false`)

- `refetchOnFocus` : browser window가 focus됐을 때 쿼리를 다시 하도록 허용한다 (기본값 `false`)

- `refetchOnReconnect` : 네트워크 연결이 다시 연결될 때 쿼리를 다시 하도록 허용한다 (기본값 `false`)

> `refetch-*` 함수들은 기본값이 있고 이 기본값을 ovverride하는 것임

### Frequently Used Query Hook Return Values

TBD: https://redux-toolkit.js.org/rtk-query/usage/queries#frequently-used-query-hook-return-values

## references

- [Redux Toolkit docs](https://redux-toolkit.js.org/rtk-query/usage/queries)
