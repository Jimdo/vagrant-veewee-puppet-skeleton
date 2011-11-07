# node-configuration

node 'host01' {
    #include parameterized class
    class { 'skeleton' :
        foo => 'baz',
    }
    #include class
}

node /^host0([2-9])/ {
    include skeleton
}

