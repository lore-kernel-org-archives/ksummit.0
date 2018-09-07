Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 58519F8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 14:33:31 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 21EEEA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 14:33:30 +0000 (UTC)
Date: Fri, 7 Sep 2018 10:33:26 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20180907143326.GM5098@thunk.org>
References: <CAGXu5j+-X6WQNdTYK2ZA5OOJgc0RfCq9Gr9WRAMkYTSQOT7QdQ@mail.gmail.com>
	<20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
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

On Thu, Sep 06, 2018 at 04:24:03PM -0700, Kees Cook wrote:
> 
> Hopefully we can all agree on deprecating strcpy() and strncpy() in
> favor of strscpy()?

There are some places where I use strncpy for a character array which
is *not* a null-terminated string.  What is the preferred alternative
for me?  I can suppress the problem when gcc complains about it using:

+       __u8    s_first_error_func[32] __nonstring;     /* function where the error happened */

But if we do a blanket deprecation, what should I use instead?

      	       	       		    	 - Ted
