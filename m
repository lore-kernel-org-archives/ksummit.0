Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 54E09BBE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 20:21:05 +0000 (UTC)
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3DB1D1F6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 20:21:04 +0000 (UTC)
Received: by mail-io0-f171.google.com with SMTP id o22so9284993iod.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Apr 2017 13:21:04 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <20170418201151.GA14118@kroah.com>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<20170418201151.GA14118@kroah.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 18 Apr 2017 13:21:03 -0700
Message-ID: <CA+55aFw+W=-8EbN46W=uTbOy67igN2LC1+13+wgFJ+i8vR4AGg@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Cc: Dave Airlie <airlied@linux.ie>, Doug Ledford <dledford@redhat.com>,
	Ingo Molnar <mingo@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Apr 18, 2017 at 1:11 PM, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> I'd recommend Ben Hutchings for the help and work he does with stable
> kernel releases as well.  Those numbers don't show up in your tree, but
> in the stable releases, he is up there at with the amount of effort and
> help he provides me, and the users of the trees he maintains (3.2 and
> 3.16 for Debian).  I figure the stable trees do tie into "process
> improvements" for some discussions.

Absolutely.  And as already mentioned, I'd like to extend it further
downstream and actually have distro people. Not tons, but to get the
discussion going about what works for them and in particular how (if?)
we could integrate those closer.

Android, of course, being the big elephant in the room. We're not
going to solve it, but at least have somebody there talking about
_their_ pain points.

                  Linus
