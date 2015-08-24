Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 53D9DBCF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 20:47:05 +0000 (UTC)
Received: from Galois.linutronix.de (www.linutronix.de [62.245.132.108])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B25F324E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 20:47:04 +0000 (UTC)
Date: Mon, 24 Aug 2015 22:46:33 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: James Morris <jmorris@namei.org>
In-Reply-To: <alpine.LRH.2.20.1508250612360.22949@namei.org>
Message-ID: <alpine.DEB.2.11.1508242220570.15006@nanos>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<alpine.LRH.2.20.1508250612360.22949@namei.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Tue, 25 Aug 2015, James Morris wrote:
> On Mon, 24 Aug 2015, James Bottomley wrote:
> 
> > Um, forgive me for being dense, but doesn't fixing the flaws stop their
> > exploitation?  In any event, Hardening means "reducing the attack
> > surface" and that encompasses both active and passive means (including
> > actual bug fixing).
> 
> Hardening is mitigating those flaws.  You'll never find every flaw, but 
> you can mitigate against entire classes of flaws being exploited.

Fair enough, but I agree with James, that we should not make this an
isolated topic.

Let's look at it from a different POV. 10+ years ago locking was
something which was only understood by a minority of the developers
and they had to figure out (or not) the horrible once per year
deadlocks.

Then RT happened to expose a gazillion of those issues and once we got
tired of debugging this hard to understand problems we came up with a
tool which tells Joe Developer where he screwed up.

As a consequence developers got more aware of locking semantics and
the number of hard to figure out lock inversion problems got reduced
significantly.

We added a lot of other mechanisms to detect different classes of
failure (use after free, ....). Both runtime debugging facilities and
static code analysis have helped to improve the code quality and the
awareness of developers.

Security and the pitfalls of user space facing code are still a riddle
wrapped up in an enigma for most developers, so the question is how
can we improve that situation.

While we certainly want to add mechanisms which prevent flaws to be
exploited we surely want to do something about educating people how to
avoid the flaws in the first place.

One can read about interesting ways to subvert a lot of the hardening
techniques every other day, so while we certainly want to add
hardening techniques, it's even more important that these techniques
become the last parachute and not the catch it all mechanism because
we gave up on the underlying issues.

I totally agree that we cannot prevent all flaws, but we certainly can
do better in reducing the quantity. And that means that we need to
educate people. And that education involves traditional training,
documentation and clever usage of tools. If we can use hardening
techniques to slap developers on their fingers, that's certainly a
good thing. But we don't want to decouple the hardening from 'reduce
the flaws' as you might create the impression that it's not that
important to think security aware because the hardering techniques
will prevent the exploits anyway.

Thanks,

	tglx
