Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C65240B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Nov 2018 10:47:30 +0000 (UTC)
Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com
	[209.85.222.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 269FC224
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Nov 2018 10:47:30 +0000 (UTC)
Received: by mail-ua1-f65.google.com with SMTP id d19so874381uaq.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 04 Nov 2018 02:47:30 -0800 (PST)
MIME-Version: 1.0
References: <20181020134908.GA32218@kroah.com>
	<87y3ar80ac.fsf@notabene.neil.brown.name>
	<c6bf1877-6e29-50ec-ffa8-314ab35ec9ce@redhat.com>
	<185b786a2bd6e8d527dca161dc42e4f1@redchan.it>
	<20181025081911.GB11343@kroah.com> <20181025193901.GD26403@thyrsus.com>
	<20181025204718.GB25649@thunk.org> <20181025214123.GA2448@thyrsus.com>
	<87a7n165h6.fsf@notabene.neil.brown.name>
In-Reply-To: <87a7n165h6.fsf@notabene.neil.brown.name>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sun, 4 Nov 2018 11:47:17 +0100
Message-ID: <CAMuHMdXw1XAkGv1G3uR5Lx7nffHdAS2G26VPYVzZOUYfhfSmHQ@mail.gmail.com>
To: neil@brown.name
Content-Type: text/plain; charset="UTF-8"
Cc: linux-kernel-owner@vger.kernel.org, rms@gnu.org,
	ksummit-discuss@lists.linuxfoundation.org, mishi@linux.com,
	Greg KH <gregkh@linuxfoundation.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	bruce@perens.com, esr@thyrsus.com,
	"Bradley M. Kuhn" <bkuhn@sfconservancy.org>, editor@lwn.net,
	moglen@columbia.edu, visionsofalice@redchan.it
Subject: Re: [Ksummit-discuss] The linux devs can rescind their license
	grant.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 26, 2018 at 12:12 AM NeilBrown <neil@brown.name> wrote:
> On Thu, Oct 25 2018, Eric S. Raymond wrote:
> > Theodore Y. Ts'o <tytso@mit.edu>:
> >> On Thu, Oct 25, 2018 at 03:39:01PM -0400, Eric S. Raymond wrote:
> >> > Under Jacobsen vs. Katzer (535 f 3d 1373 fed cir 2008) authors of
> >> > GPLed software have a specific right to relief (including injunctive
> >> > relief) against misappropriation of their software. That ruling (which
> >> > was the case of first impression on the binding status of the GPL)
> >> > reputational damage is *specifically* recognized as grounds for relief.
> >>
> >> I've read the legal briefs, and I'm pretty sure they don't say what
> >> you are claiming they say.  Yes, I'm not a lawyer --- but that's OK
> >> --- neither are you.
> >
> > How much are you willing to gamble on not being wrong?
> >
> >> The *vast* majority of the "anti-CoC dissidents" who have been
> >> advancing this argument, have, as near as I can tell, little or no
> >> copyright ownership in the kernel.
> >
> > I do not have any facts with which to dispute this specific claim.
> > However, I do notice that a significant number of long-time
> > contributors have put themselves in the anti-CoC camp. I note Al Viro
> > as a recent example.
>
> I think you are blurring two groups here.
> Ted describes "anti-CoC dissidents" as people who are advancing an
> argument about rescinding their license.  This is a smaller groups than
> the "ant-CoC camp" who don't really like the CoC.  I suspect is it is a
> much smaller group when restricting to actual copyright holders.
>
> I am against the CoC as it stands, but rescinding any license is such an
> enormous over-reaction, I find the concept laughable.

Indeed. While I cannot comment on the legality of the rescinding, this
rescinding is definitely not compatible with "be nice to each other",
which is what all kernel developers who do not like the CoC as it
stands, and who I'm aware of, do like as a general principle.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
