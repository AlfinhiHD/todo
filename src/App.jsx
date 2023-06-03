import './App.css'
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap';
import Dashboard from './page/DashboardPage/DashboardPage';
import LoginPage from './page/LoginPage/LoginPage';
import LandingPage from './page/LandingPage/LandingPage';
import { BrowserRouter as Router, Route, Routes } from "react-router-dom"
import RegisterPage from './page/RegisterPage/RegisterPage';
import PrivateRoute from './config/PrivateRoute';

function App() {


  return (
    <>
      <Router>
        <Routes>
          <Route path="/" element={<LandingPage />} />
          <Route path="/register" element={<RegisterPage />} />
          <Route path="/login" element={<LoginPage />} />
          <Route element={<PrivateRoute />}>
            <Route path="/dashboard" element={<Dashboard />} />
          </Route>
        </Routes>
      </Router>
    </>
  )
}

export default App
