Return-Path: <jmorris@namei.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CF5B8B14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 22:22:43 +0000 (UTC)
Received: from namei.org (tundra.namei.org [65.99.196.166])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5628810E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 22:22:43 +0000 (UTC)
Date: Tue, 25 Aug 2015 08:22:31 +1000 (AEST)
From: James Morris <jmorris@namei.org>
To: Thomas Gleixner <tglx@linutronix.de>
In-Reply-To: <alpine.DEB.2.11.1508242220570.15006@nanos>
Message-ID: <alpine.LRH.2.20.1508250753470.26669@namei.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<alpine.LRH.2.20.1508250612360.22949@namei.org>
	<alpine.DEB.2.11.1508242220570.15006@nanos>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Emily Ratliff <eratliff@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 24 Aug 2015, Thomas Gleixner wrote:

> While we certainly want to add mechanisms which prevent flaws to be
> exploited we surely want to do something about educating people how to
> avoid the flaws in the first place.

What if we had a session where a security researcher presented an overview 
of classes kernel security flaws and how they're typically exploited?  
This would be aimed at core kernel developers, specifically.

> 
> One can read about interesting ways to subvert a lot of the hardening
> techniques every other day, so while we certainly want to add
> hardening techniques, it's even more important that these techniques
> become the last parachute and not the catch it all mechanism because
> we gave up on the underlying issues.

Nobody is giving up on underlying issues, in fact, we are doing pretty 
well there, but not so well with kernel mitigations, which keeps biting us 
in uncomfortable places.

> I totally agree that we cannot prevent all flaws, but we certainly can 
> do better in reducing the quantity. And that means that we need to 
> educate people. And that education involves traditional training, 
> documentation and clever usage of tools. If we can use hardening 
> techniques to slap developers on their fingers, that's certainly a good 
> thing. But we don't want to decouple the hardening from 'reduce the 
> flaws' as you might create the impression that it's not that important 
> to think security aware because the hardering techniques will prevent 
> the exploits anyway.

You're right, but as mentioned, I do believe that we are doing pretty well 
at code quality vs., say, proprietary development, as demonstrated by 
numerous quantitative studies.  The Linux kernel is used heavily and 
across many different types of environments, with a tight user/developer 
feedback loop, and all the code is subject to public review and 
accountability.  We actually pioneered this stuff :)

There is a lot of good testing happening, both in the community and via 
corporate QA, and of course there can be more, but the point of this 
proposal is that we are not leading in kernel self-protection and in fact 
somewhat behind the state of the art.  This is a problem which we 
specifically need to address in consultation with the research community 
and with core kernel folk on board.

I'm not saying the other stuff is not important, it absolutely is, but I 
wanted to specifically highlight kernel self-protection as a significant 
issue requiring collaboration between different groups.

There's no reason we can't have an expanded track, including an education 
session for kernel developers as mentioned above, as well as a testing 
session, and collect these together with kernel self-protection as a 
"kernel security hardening" track.  (This is of course distinct from 
functional security mechanisms, which we covered at LSS last week). I 
didn't want to have such a wide scope given limited availability of core 
developers on any one topic, but if folk are happy to consider expanding 
it, then fine.


- James
-- 
James Morris
<jmorris@namei.org>
