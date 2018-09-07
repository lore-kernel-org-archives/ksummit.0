Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0EBE7E85
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 20:56:11 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A85377C7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 20:56:10 +0000 (UTC)
Date: Fri, 7 Sep 2018 16:56:07 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20180907205607.GZ5098@thunk.org>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<20180907143326.GM5098@thunk.org>
	<CAGXu5jJ9EP3UEWjyTJum0YM7=549kVcCOk5Jk_i+dt_B0SY+nQ@mail.gmail.com>
	<CAK8P3a2F5Q0PEUR-0D287GkWHGpv3b6p65o95vdDhkWWX1rEWw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a2F5Q0PEUR-0D287GkWHGpv3b6p65o95vdDhkWWX1rEWw@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] API
 replacement/deprecation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 10:30:04PM +0200, Arnd Bergmann wrote:
> 
> I suspect that a lot of the cases that want NUL-padding also don't
> want NUL-termination: when you store a string on disk in a fixed-length
> record or transfer it over the network, you don't want to leak stack
> data to the medium, but you also don't need the terminating character
> because you know the maximum length already.
> 
> strncpy() does exactly the right thing for that case, it's just that
> this pattern is now a corner case, and gcc tends to flag such
> usage with a warning about missing termination (unless you
> use __nonstring) but doesn't flag the more common usage when
> it looks correct.

Yeah, the case I have is when I'm copying from a NUL-terminated string
into a fixed char array.  So if we had a function called
"copy_string_to_char_array" (we'll figure out a better name later)
which takes a source, destination, and size parameter, and which does
the functional equivalent of:

	memset(dest, 0, size);
	strncpy(src, dest, size);

... we could do something that's more efficient than the above, and
does exactly what I'm looking for in this case.

Of course, there could be other corner cases where strncpy() is
justified; this is just the use case I care about.  :-)

     	     	       	       	    - Ted
