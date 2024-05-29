import { useGetUsersQuery } from '../RTK/userAPI';

function Users() {
  const {
    data: users,
    isLoading,
    isError,
    isSuccess,
    error,
  } = useGetUsersQuery();

  return (
    <div className='d-flex justity-content-center p-3'>
      {isLoading && <h3>Loading...</h3>}
      {isError && <h3>Error: {error.message}</h3>}
      {isSuccess &&
        users.map((user) => (
          <div
            key={user.id}
            className='p-3 border border-2 border-dark m-2'>
            <h4>{user.name}</h4>
            <h4>{user.email}</h4>
          </div>
        ))}
    </div>
  );
}

export default Users;
