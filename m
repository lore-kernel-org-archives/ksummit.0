Return-Path: <mcgrof@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85FA1904
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:00:53 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E320A25F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:00:52 +0000 (UTC)
Received: from mail.kernel.org (localhost [127.0.0.1])
	by mail.kernel.org (Postfix) with ESMTP id C63C020221
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:00:51 +0000 (UTC)
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	(using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6EA5920212
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 18:00:48 +0000 (UTC)
Received: by mail-ua0-f180.google.com with SMTP id k90so46687723uak.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Aug 2016 11:00:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1472497471.2376.32.camel@HansenPartnership.com>
References: <CA+55aFxLRqket8-yCL=FPM0Bz86PxdS+hRSTzXES+=1bOv=feg@mail.gmail.com>
	<20160827183550.GB1601@katana> <20160828074706.GB1370@kroah.com>
	<1472492553.32433.108.camel@redhat.com>
	<CA+55aFz98VJR8RNv2=zuV0y4Ke_EmCyAR71eMNdq5p6cYm4OAw@mail.gmail.com>
	<1472497471.2376.32.camel@HansenPartnership.com>
From: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Tue, 30 Aug 2016 11:00:26 -0700
Message-ID: <CAB=NE6VQX5e5WjhM9qTZtvv-jgDrK1Y3c2kPV6Hxe69NBrc9mw@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: "Bradley M. Kuhn" <bkuhn@sfconservancy.org>,
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

On Mon, Aug 29, 2016 at 12:04 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Mon, 2016-08-29 at 11:49 -0700, Linus Torvalds wrote:
>> On Mon, Aug 29, 2016 at 10:42 AM, Rik van Riel <riel@redhat.com>
>> wrote:
>> >
>> > Companies like IBM and SGI started participating in Linux because
>> > they knew no competitor would run off with their code, improve it
>> > slightly, and offer a proprietary product for sale based it.
>>
>> Absolutely.
>>
>> Right now we're in the situation that a lot of companies are very
>> suspicious of the GPL, I do agree with Bradley on that.
>>
>> But we put the blame on very different things - I at least partly
>> very much do blame the "culture" that goes with the GPL.  Corporate
>> users do see the hostility towards commercial use that we have in
>> some quarters.
>>
>> We should be much more vocal about how it protects even companies
>> from people taking advantage of their code. Yes, they'll always want
>> to have their "value add" on top, but we should push the GPL as a
>> great model for core infrastructure everywhere.
>>
>> We should strive to make companies *like* the GPL, and encourage
>> exactly the kinds of things you mention.
>
> As I said way far upthread: this is how I sold the GPL to Parallels.  I
> definitely have real world experience of doing this and I'm happy to do
> it for other companies

I will note that this is a very hard job and only a few are both apt,
and have enough patience to deal with. Since people have learned they
can contribute to the kernel permissively though, this has meant there
is less of a need for that these days. What this means is that old
business models are less willing to change, if they don't have to.
Still -- that should be an advantage for the companies that *do* want
to consider using the GPL, the question would then be -- how to do
better, business-wise in today's market place if they do use the GPL.
This requires careful consideration, business partnerships, and an
keen eye towards the future. My answer to this is of course pure
mathematics -- but that requires more R&D still, but more on the
financial areas. The engineering gains should be clearly tangible
already, so the only thing stopping this is archaic business models.

> and be part of the crowd that does this
> encouragement.  We have a lot of support within the industry (Martin
> Fink, ex HP CTO springs immediately to mind here).

These are rather old companies, do we have any good market evidence of
newer companies preferring the GPL? If not why not?

> As a side note: if you own a project you want to open source, Apache-2
> ends up being practically the worst licence imaginable: not only can
> your competitors make proprietary modified copies of your code they
> don't have to show you, but they also gain rights to your patents with
> which to do it.

I disagree. The benefit that Apache 2 provides not that you hold
patents per se, but rather if you want to contribute to the ecosystem
you have to also contribute to the patent pool. In today's mobile
market place the Apache 2 license seems like a rather *genius* move
IMHO for the cases where otherwise you do not care for the gains of
copyleft. What I'm trying to say is -- in my experience Android folks
barely cared about contributing upstream, it always was an uphill
battle. Patents however were a serious problem in every possible
little corner in the ecosystem. If a lot of new companies are using
permissive licenses for Linux, and you don't care over the copyleft
gains the Apache 2 license seems to give you a better edge.

You still loose good collaborations of course, and that of course is a
rather stupid thing to do. But that's a practical engineering decision
they seem to be happy to believe they can overcome. So its a bet. To
loose that bet Linux better damn well enable those who want to bet on
upstream Linux to do a better job. Let's make sure that happens. In
the end *both* strategies (Apache 2 front, and GPL upstream) should
actually help extinguish archaic business models -- but more
importantly, behind the scenes what is really taking place is the
justification behind better engineering through more rapid and
efficient collaborations. That will evolve slowly.

  Luis
