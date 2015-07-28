Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 209C11BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 12:16:45 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9E02FEE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 12:16:44 +0000 (UTC)
Date: Tue, 28 Jul 2015 08:16:41 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: Miklos Szeredi <miklos@szeredi.hu>
Message-ID: <20150728121641.GI2851@thunk.org>
References: <28240.1437753683@warthog.procyon.org.uk>
	<1438003184.26913.23.camel@infradead.org>
	<20150727143342.GA2851@thunk.org>
	<CAJfpegvuaOFm+pN4Gec0h13XaHAtOtia2Ww1TN+gCuVkZVcECw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJfpegvuaOFm+pN4Gec0h13XaHAtOtia2Ww1TN+gCuVkZVcECw@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Overlays and file(system)
 unioning issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 28, 2015 at 09:13:18AM +0200, Miklos Szeredi wrote:
> 
> Exactly.   Switching overlayfs to deal with DT_WHT is trivial.
> Turning off backward compatibility (checking 0,0 chardev as internal
> representation) can be made a mount option of overlayfs.  If the
> DT_WHT representation is used, then it will work either way, but will
> be suboptimal due to getattr on chardev.  If the  back compatibility
> is turned off then it will be optimal, but wouldn't deal with the old
> representation.
> 
> The only remaining issue being backward incompatibility of the
> filesystem image itself (old fsck, ...).  Whether that's a problem or
> not is up to the user/distro to decide.

Yep, this seems like a no-brainer.  Given that, is there anything that
requires discussion at the Kernel Summit?

							- Ted
