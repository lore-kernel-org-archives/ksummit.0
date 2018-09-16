Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 833C6C8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 16:25:12 +0000 (UTC)
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2ABB7F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 16:25:12 +0000 (UTC)
Received: by mail-it0-f50.google.com with SMTP id j81-v6so8271325ite.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 09:25:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
	<2499181.JFuLfGgBK5@avalon>
In-Reply-To: <2499181.JFuLfGgBK5@avalon>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 16 Sep 2018 09:25:00 -0700
Message-ID: <CA+55aFyUd4bqPNtV7W7=aMXtMfMw2c+18akRkL_XYAX=oUPRtg@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Project Banbury
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Sep 16, 2018 at 9:03 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> >
> > http://www.wil.cx/~willy/banbury.html
>
> Having lost a server due to a DDoS attach that rendered the link between CPU
> and storage unusable for a too long time, I think this would be an amazing
> improvement.

I agree on the "amazing", but in a more literal sense. I don't think
it's all that realistic. Pausing IO will basically hang the machine,
and you'll run out of memory in not too long too.

It's probably doable with a mount option and filesystem help (aka
"intr" for NFS). But people should be aware that one reason "intr"
worked as well as it did for NFS was that it

 (a) broke POSIX rules

 (b) NFS traditionally did almost synchronous writes

 (c) the metadata is/was on the disconnected side

and even then, you really really didn't want NFS "intr" to be on a
core filesystem.

With hotplug devices, you have some "interesting" issues in addition,
namely making sure you really connect it back to the right disk, and
don't re-use *anything* in case it turns out it's not the same one.
Even for the "simple" USB case, you'll have serious issues with the
serial numbers not being reliable (maybe things are better now, but it
used to be that the supposedly "unique" USB serial number wasn't
unique at all).

So I think it would be a good addition, but people should realize that
the current behavior is there for some pretty fundamental reasons.

               Linus
