///gmsio_status()
{
    if (instance_exists(sys_nn)) {
        return sys_nn.status;
    }
    else {
        return gmsio_status_disconnected;
    }
}
