Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7FE67B5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:05:33 +0000 (UTC)
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A85071A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 16 Jul 2015 01:05:32 +0000 (UTC)
Received: by lagw2 with SMTP id w2so34537930lag.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 18:05:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150716092410.22d0af07@noble>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150714104623.GQ11162@sirena.org.uk> <55A51548.4040502@oracle.com>
	<20150714152515.GX11162@sirena.org.uk> <55A52B8B.5060606@oracle.com>
	<20150714113829.4b618d9a@gandalf.local.home>
	<55A53074.7040109@oracle.com>
	<20150714120225.65e489cc@gandalf.local.home>
	<55A5635D.1020600@oracle.com>
	<20150715114946.481f154d@noble> <55A5C0EE.3060803@oracle.com>
	<20150715122802.56ca2100@noble>
	<1436955234.31121.25.camel@HansenPartnership.com>
	<20150716092410.22d0af07@noble>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 15 Jul 2015 18:05:11 -0700
Message-ID: <CALCETrVpM6q-K+zyh1_FShQBjrY6DoE8Aj4UeeT4q2FhOAn70A@mail.gmail.com>
To: NeilBrown <neilb@suse.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Sasha Levin <sasha.levin@oracle.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 15, 2015 at 4:24 PM, NeilBrown <neilb@suse.com> wrote:
> On Wed, 15 Jul 2015 13:13:54 +0300 James Bottomley
>
>>
>> I just use the rule of thumb: must be in -next for two days because then
>> I know 0day (and the other checkers) have also run.
>
> Do you *really* know that?
> Given that there seems to be value in knowing "0day has run
> successfully", should we ask for an interface to do exactly that?
>
> Hey .. we could even have a bot which watches lkml for pull requests,
> grabs the git hash, and checks that 0day has run on it.  If not -
> automatic public shaming ensues :-)
>

As of today, I'm much less convinced that -next is suitable for this
purpose.  I have a really dumb, blatant, obvious regression sitting in
-next right now, and it's been there for a couple of weeks with no one
spotting it.  The 0-day bot didn't spot it either (and yes, I emailed
Fengguang suggesting another test for the bot).

I think it's hard to find any real substitute for a soak in -rc or a
real release.

--Andy
