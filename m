Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3EE5AD1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 15:19:59 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AC8FF5E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 15:19:58 +0000 (UTC)
Date: Sat, 8 Sep 2018 11:19:53 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20180908151953.GB2296@thunk.org>
References: <20180906094158.1eba4f50@canb.auug.org.au>
	<20180905222437.5d2a1730@vmware.local.home>
	<CAGXu5jKfbVUcyGu6U1dVR8dKjGK0sY7=pLdmYXUC9_G8KmgZ0A@mail.gmail.com>
	<20180907091842.6c55bd9a@canb.auug.org.au>
	<CAGXu5jKQJfeOmTRBXB7ofW1iH6FNGROnSZzYdpG=H_Hu8zep=w@mail.gmail.com>
	<20180907143326.GM5098@thunk.org>
	<CAGXu5jJ9EP3UEWjyTJum0YM7=549kVcCOk5Jk_i+dt_B0SY+nQ@mail.gmail.com>
	<CAK8P3a2F5Q0PEUR-0D287GkWHGpv3b6p65o95vdDhkWWX1rEWw@mail.gmail.com>
	<20180907205607.GZ5098@thunk.org>
	<CAMuHMdUkqSfhUqgzkxPwG6jAofLrsuwvTZdWk_trmP5_jrWDCA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdUkqSfhUqgzkxPwG6jAofLrsuwvTZdWk_trmP5_jrWDCA@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Sat, Sep 08, 2018 at 10:15:01AM +0200, Geert Uytterhoeven wrote:
> Why the memset()? strncpy() pads the destination with zeroes, so it
> is not needed. This is basically the major reason to use strncpy().

I had completely forgotten about that!  I've always focused on when
strncpy would stop copying, and the lack of NUL termination in some
cases; not that it automatically zero'ed the padding.  Since I tend to
always memset the entire structure to be zero, I started assuming that
I couldn't count on strncpy to NUL pad.

Perhaps all we need to do is to rename strncpy to make it clear when
it's appropriate it, and when it simply is not.


> >         strncpy(src, dest, size);
> 
> Oh, you're copying in the wrong direction ;-)

Yeah, oops.  What I get for typing too quickly.  :-)

      	     	    	    	   - Ted
