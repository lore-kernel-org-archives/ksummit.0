Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0307BFBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 22:53:21 +0000 (UTC)
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AE71A623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 22:53:20 +0000 (UTC)
Received: by mail-it0-f67.google.com with SMTP id h20-v6so21849616itf.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 15:53:20 -0700 (PDT)
MIME-Version: 1.0
References: <CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
	<20180907160945.GI16300@sasha-vm>
	<20180907202328.GE25756@kroah.com> <20180907211341.GJ16300@sasha-vm>
	<CA+55aFyAWowFVi_UOkoJSfFb30Djk7JxRi4QFv7oJgpRKJxK0A@mail.gmail.com>
	<20180907224346.GA21546@roeck-us.net>
In-Reply-To: <20180907224346.GA21546@roeck-us.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 7 Sep 2018 15:53:08 -0700
Message-ID: <CA+55aFwqvy-NVg73RX-k0WNBU5FOyBFeOsBTbOr2N5egk6v_Mw@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="UTF-8"
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 7, 2018 at 3:43 PM Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Fri, Sep 07, 2018 at 03:27:01PM -0700, Linus Torvalds wrote:
> >
> > So maybe an automated "linux-next" that starts happening *before* the
> > rc stage would catch some things?
>
> And it does, as soon as Greg publishes a set of patches.

Yes, yes, I was clearly not explaining myself well.

I see all the reports that you (and Nathan, and Shuah, and others) do
for stable rc's. So I very much know that happens.

But I was literally thinking of that week or two *before* Greg
actually picks up the stable patches because he wants to have them get
some testing in mainline first.

*If* the same kinds of scripts that Greg and Sasha already use to pick
up their stable patches could be automated early, maybe the patches
would also get a bit of special testing in the *context* of the stable
tree? A special automated "these are marked for stable, but haven't
been picked up yet" stable-next testing thing?

                  Linus
