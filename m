Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59D99C0B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 23:04:07 +0000 (UTC)
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D0A091E1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 23:04:06 +0000 (UTC)
Received: by iodv127 with SMTP id v127so166763657iod.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 16:04:06 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <alpine.DEB.2.11.1508242220570.15006@nanos>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<alpine.LRH.2.20.1508250612360.22949@namei.org>
	<alpine.DEB.2.11.1508242220570.15006@nanos>
Date: Mon, 24 Aug 2015 16:04:06 -0700
Message-ID: <CAGXu5jL0t8bc2TF3Zy0jbbO_X58-3=W7OvKyiQdB3pYvnxwgTg@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel Hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 24, 2015 at 1:46 PM, Thomas Gleixner <tglx@linutronix.de> wrote:
> On Tue, 25 Aug 2015, James Morris wrote:
>> On Mon, 24 Aug 2015, James Bottomley wrote:
>>
>> > Um, forgive me for being dense, but doesn't fixing the flaws stop their
>> > exploitation?  In any event, Hardening means "reducing the attack
>> > surface" and that encompasses both active and passive means (including
>> > actual bug fixing).
>>
>> Hardening is mitigating those flaws.  You'll never find every flaw, but
>> you can mitigate against entire classes of flaws being exploited.
>
> Fair enough, but I agree with James, that we should not make this an
> isolated topic.
>
> Let's look at it from a different POV. 10+ years ago locking was
> something which was only understood by a minority of the developers
> and they had to figure out (or not) the horrible once per year
> deadlocks.
>
> Then RT happened to expose a gazillion of those issues and once we got
> tired of debugging this hard to understand problems we came up with a
> tool which tells Joe Developer where he screwed up.
>
> As a consequence developers got more aware of locking semantics and
> the number of hard to figure out lock inversion problems got reduced
> significantly.
>
> We added a lot of other mechanisms to detect different classes of
> failure (use after free, ....). Both runtime debugging facilities and
> static code analysis have helped to improve the code quality and the
> awareness of developers.
>
> Security and the pitfalls of user space facing code are still a riddle
> wrapped up in an enigma for most developers, so the question is how
> can we improve that situation.
>
> While we certainly want to add mechanisms which prevent flaws to be
> exploited we surely want to do something about educating people how to
> avoid the flaws in the first place.

Absolutely. I just think they are separate discussions. Teaching
someone how to avoid integer overflows is totally different from
teaching them why a fix-position writeable and executable memory
region should never exist.

>
> One can read about interesting ways to subvert a lot of the hardening
> techniques every other day, so while we certainly want to add
> hardening techniques, it's even more important that these techniques
> become the last parachute and not the catch it all mechanism because
> we gave up on the underlying issues.

Yes, it's absolutely an arms race. But there's no real way around
this. What we have to do is actually start running the race. :)

> I totally agree that we cannot prevent all flaws, but we certainly can
> do better in reducing the quantity. And that means that we need to
> educate people. And that education involves traditional training,
> documentation and clever usage of tools. If we can use hardening
> techniques to slap developers on their fingers, that's certainly a
> good thing. But we don't want to decouple the hardening from 'reduce
> the flaws' as you might create the impression that it's not that
> important to think security aware because the hardering techniques
> will prevent the exploits anyway.

Kernel self-protection systems aren't for slapping developers on their
fingers: it's about maintaining kernel integrity for a user's system
that is under active attack. The harder it is to attack, the better
the chance they will have to detect it.

-Kees

-- 
Kees Cook
Chrome OS Security
