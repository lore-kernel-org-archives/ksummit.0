Return-Path: <mcgrof@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B4060904
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:05:16 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D2906275
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:05:14 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id B0FD52024D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:05:10 +0000 (UTC)
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 988862021A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:05:05 +0000 (UTC)
Received: by mail-ua0-f173.google.com with SMTP id m60so46690152uam.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 11:05:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160830173803.GG3950@sirena.org.uk>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
	<87inunxf14.fsf@ebb.org> <20160827162655.GB27132@kroah.com>
	<87bn0dnc6f.fsf@ebb.org>
	<1472348609.2440.37.camel@HansenPartnership.com>
	<20160828042454.GA8742@jeremy-acer>
	<20160828125542.7oejzcbpeozkrq3k@thunk.org>
	<c1263e6689434e4044e58499493ce435.squirrel@twosheds.infradead.org>
	<20160829062638.GA12415@kroah.com>
	<20160830173803.GG3950@sirena.org.uk>
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Tue, 30 Aug 2016 11:04:44 -0700
Message-ID: <CAB=NE6Ur0e1AG-jZB2Et+Snf8hbDgpP+w+SWajiVKmuUq844XQ@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <james.bottomley@hansenpartnership.com>,
	"Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
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

On Tue, Aug 30, 2016 at 10:38 AM, Mark Brown <broonie@kernel.org> wrote:
> On Mon, Aug 29, 2016 at 08:26:38AM +0200, Greg KH wrote:
>> On Sun, Aug 28, 2016 at 02:06:44PM -0000, David Woodhouse wrote:
>
>> > Even though I abhor what Patrick McHardy is doing, I still can't quite
>> > find it in my heart to have *sympathy* for his victims. Because it's not
>> > as if he's just taking random pot-shots at passers-by on the street. These
>> > people defended their actions in court, and lost.
>
>> No, that's not what Patrick did.  Whenever he actually took something to
>> court, _he_ lost.  Companies paid him off before then because they were
>> scared for foolish reasons, or it was honestly just cheaper to do it
>> than go to court and win.  He took the traditional model of patent troll
>> to the next level.
>
> Please bear in mind that public information on what's going on there is
> very scarce, I suspect most people have only seen the SFLC statement at:

SFLC != SFC. It will be hard, but try and look at why we have two orgs
now. SFLC did do good -- it helped with the upstream openhal efforts
and ath5k review. But the org that put out the review below and then
published the Principles is SFC, not SFLC.

>    https://sfconservancy.org/blog/2016/jul/19/patrick-mchardy-gpl-enforcement/
>
> (it seems from followups that there may be some confusion even in what
> I've quoted above).

Agreed, I think more has been revealed in this thread then in that
article, sadly most is information learned so far is through the grape
vine.

 Luis
