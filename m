Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59CE7681
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 17:15:15 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AF14F202BD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 17:15:14 +0000 (UTC)
Date: Tue, 12 Aug 2014 13:15:09 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
Message-ID: <20140812171509.GF12871@thunk.org>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<53EA3DA0.2070407@roeck-us.net> <53EA3F22.8080607@hitachi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53EA3F22.8080607@hitachi.com>
Cc: shuah.kh@samsung.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

In case it's useful, this is the tool I use to build a root_fs for
ext4 testing:

https://git.kernel.org/cgit/fs/ext2/xfstests-bld.git/tree/kvm-xfstests/test-appliance/gen-image

There's an automated test running and xfstests results parser in there
as well, but that's probably a bit less useful for non-file-system developers.

      	     	    	       	   - Ted
