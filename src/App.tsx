import { Button } from '@components/button';

function App() {
  return (
    <div>
      <h1>Testing Button</h1>
      <Button label="Click Me" onClick={() => alert('Clicked!')} />
    </div>
  );
}

export default App;