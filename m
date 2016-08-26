Return-Path: <linus971@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1DFDE305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 17:21:16 +0000 (UTC)
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9CAC21CE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 17:21:15 +0000 (UTC)
Received: by mail-oi0-f52.google.com with SMTP id f189so119070471oig.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 10:21:15 -0700 (PDT)
MIME-Version: 1.0
Sender: linus971@gmail.com
In-Reply-To: <1472230114.2751.67.camel@redhat.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<CAPeXnHs_9=m9R+JO=O_p_Q390b1DgnsKyMgP6kGiPyBGn=+3_w@mail.gmail.com>
	<CA+55aFxXroS=_Mfyg+-3WF0KwqvPXJBKT0tjryWbDUx6G9Qvkw@mail.gmail.com>
	<CAPeXnHvMUOL4M6y7_9oEF6ovrasfSY9Zqn2tRs-dRst9SS1jYQ@mail.gmail.com>
	<CA+55aFxZTeJoPqRCHX+o_eEJ4RGDC_rOk6ZuL1Vz8Bk+7LfkfQ@mail.gmail.com>
	<1472225332.2751.56.camel@redhat.com>
	<CA+55aFxLB+1TtSPR9C5HG1+boZcGrub6VMATCa_Og9Jg51ttZw@mail.gmail.com>
	<1472230114.2751.67.camel@redhat.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 26 Aug 2016 10:21:13 -0700
Message-ID: <CA+55aFxedcKe7q1SsVK48zkrzmUHwb8p3g8oKAHR4nUsbsobxA@mail.gmail.com>
To: Rik van Riel <riel@redhat.com>
Content-Type: text/plain; charset=UTF-8
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 9:48 AM, Rik van Riel <riel@redhat.com> wrote:
>
> What I am saying is that the end user freedoms
> specified in the GPL are just as important as
> the upstream community behind the original
> project, since the end user freedoms enable new
> projects, and new communities.

.. and my argument is that lawsuits and threats of lawsuits actually
make communities and projects less likely.

So they are just counter-productive.  The lawsuits and threats of
lawsuits hurt users too when they cause companies to stop supporting
open source.

Of course, like anything, it's a balance. There are no black-and-white
issues. But so far, I haven't seen anything that came even *close*.

And I have seen lots of cases where the threat of suing only hurt.

> There is a lot of nudging and shaming going on,
> but little on the opposite direction.
>
> I wonder if it would make sense for an organization
> like SFC to compile a list of devices that are GPL
> compliant?

Oh, absolutely. And I don't think it's even the SFC that should do it
(although I think it would be good to do so).

There's a lot of lists of supported hardware, and I absolutely agree
that what should generally go on the top of that list is not just "it
works", but "this device not only works, but the vendor has been
explicitly helping".

And I do think it happens. Look at things like the Linksys WRT54GL.
It's *ridiculously* old and weak hardware, but it actually gets good
reviews on Amazon partly exactly because of its Linux support. OpenWRT
doesn't actually recommend any particular vendors (so the good guys
don't get a shout-out, which is a bit sad), but I think DD-WRT does.

But within this discussion it's somewhat interesting to note that the
Linksys WRT54GL that is now known as a "Linux router" was actually
once one of the bad guys. They *hadn't* originally released source
code for the WRT54G, and there was a stink, and the company noticed,
and things got much better.

So again, I'm not arguing against raising a stink. If you see
problems, talk about them.

It's literally only the "bring in the lawyers" I argue against.

And to get back to the original thing that made me react so strongly:
I am in VIOLENT disagreement with Bradley Kuhn's completely insane
statement that "we have two options: we can all decide to give up on
the GPL, or we can enforce it in Courts".

I think history and sanity shows that Bradley Kuhn is completely wrong
on this, which is why I reacted _so_ strongly to it.

Quite frankly, I don't want to have *anything* to do with that kind of
mentality, and I definitely don't want to have anything to do with a
SFC that thinks that way.

I was up on stage just two days ago saying how I love the GPLv2
because of how it creates community, and then I get back home and get
pointed to that quote by Bradley.

Christ.

Excuse me for still being entirely LIVID about that idiotic remark.
And it might have been just a throw-away one that Bradley didn't even
think about, but I do think it's telling. I've heard similar noises
before, and this needs to be *stopped*.

> Companies that sell Linux devices could submit their
> devices for inclusion on that list, with a URL to
> the source code, etc.

There has actually been certification proposals in the past, and some
of them even happened. I remember seeing the penguin on packaging. I
think the "unofficial" ones are likely more flexible and able to react
better, but I don't think certification is necessarily *bad*.

Look at what Benson Leung made happen in the USB-C cable space by
completely unofficial "certification". I think that is powerful, and
yes, I certainly support things like that.

                      Linus
