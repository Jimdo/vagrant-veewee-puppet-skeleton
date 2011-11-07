class skeleton( $foo = 'bar' ) {
    
    #Just a check to see if vagrant uses facts :)
    if ( $from_skeleton == "true" ) {
        file { "/root/skeleton" :
            ensure      => present,
            source      => "puppet:///modules/skeleton/skeleton",
        }
    }

    file { "/root/skeleton_from_template" :
        ensure      => present,
        content     => template("skeleton/skeleton.erb"),
    }
}
