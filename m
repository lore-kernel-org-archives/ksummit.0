Return-Path: <miklos@szeredi.hu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9DA1640B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 07:13:20 +0000 (UTC)
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6F82DD5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 07:13:19 +0000 (UTC)
Received: by qkfc129 with SMTP id c129so48059882qkf.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 00:13:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150727143342.GA2851@thunk.org>
References: <28240.1437753683@warthog.procyon.org.uk>
	<1438003184.26913.23.camel@infradead.org>
	<20150727143342.GA2851@thunk.org>
Date: Tue, 28 Jul 2015 09:13:18 +0200
Message-ID: <CAJfpegvuaOFm+pN4Gec0h13XaHAtOtia2Ww1TN+gCuVkZVcECw@mail.gmail.com>
From: Miklos Szeredi <miklos@szeredi.hu>
To: "Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, Jul 27, 2015 at 4:33 PM, Theodore Ts'o <tytso@mit.edu> wrote:
> On Mon, Jul 27, 2015 at 02:19:44PM +0100, David Woodhouse wrote:
>> This was much nicer when it was being done with DT_WHT internally. And
>> you could *still* expose that to userspace as a 0,0 chardev =E2=80=94 or
>> however you like.
>
> Yeah, that was what I was going to propose.  We can expose it to
> userspace as a 0,0 chardev with an inode number of UINT_MAX-1, but
> that doesn't have to be the internal representation inside the kernel...

Exactly.   Switching overlayfs to deal with DT_WHT is trivial.
Turning off backward compatibility (checking 0,0 chardev as internal
representation) can be made a mount option of overlayfs.  If the
DT_WHT representation is used, then it will work either way, but will
be suboptimal due to getattr on chardev.  If the  back compatibility
is turned off then it will be optimal, but wouldn't deal with the old
representation.

The only remaining issue being backward incompatibility of the
filesystem image itself (old fsck, ...).  Whether that's a problem or
not is up to the user/distro to decide.

Thanks,
Miklos
