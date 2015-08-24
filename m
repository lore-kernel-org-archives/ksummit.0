Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2A6D8AAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 23:20:49 +0000 (UTC)
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39E8C188
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 23:20:48 +0000 (UTC)
Received: by igui7 with SMTP id i7so73212784igu.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 16:20:47 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <alpine.LRH.2.20.1508250753470.26669@namei.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<alpine.LRH.2.20.1508250612360.22949@namei.org>
	<alpine.DEB.2.11.1508242220570.15006@nanos>
	<alpine.LRH.2.20.1508250753470.26669@namei.org>
Date: Mon, 24 Aug 2015 16:20:47 -0700
Message-ID: <CAGXu5jK_4=w_e81askreLCGHXA3B3juYf-a+SNsA1j53yzt8Hw@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: James Morris <jmorris@namei.org>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
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

On Mon, Aug 24, 2015 at 3:22 PM, James Morris <jmorris@namei.org> wrote:
> On Mon, 24 Aug 2015, Thomas Gleixner wrote:
>
>> While we certainly want to add mechanisms which prevent flaws to be
>> exploited we surely want to do something about educating people how to
>> avoid the flaws in the first place.
>
> What if we had a session where a security researcher presented an overview
> of classes kernel security flaws and how they're typically exploited?
> This would be aimed at core kernel developers, specifically.

I think this would be great, but I wouldn't want to sacrifice
discussion time on which self-protections to start working on, and the
best ways to approach them.

Could we assign this as homework instead? There are countless examples
of well described kernel exploits already visible on the web. Here's
one that used ARM's historical lack of text protection (from Lee
Campbell):
http://googleprojectzero.blogspot.com/2015/01/exploiting-nvmap-to-escape-chrome.html
or overwriting function pointers (from the attack mentioned in
spender's 2010 LSS slides):
http://kernelbof.blogspot.com/2009/07/even-when-one-byte-matters.html
or Andy's exploit of the NMI issue:
http://www.openwall.com/lists/oss-security/2015/08/04/8

>> One can read about interesting ways to subvert a lot of the hardening
>> techniques every other day, so while we certainly want to add
>> hardening techniques, it's even more important that these techniques
>> become the last parachute and not the catch it all mechanism because
>> we gave up on the underlying issues.
>
> Nobody is giving up on underlying issues, in fact, we are doing pretty
> well there, but not so well with kernel mitigations, which keeps biting us
> in uncomfortable places.
>
>> I totally agree that we cannot prevent all flaws, but we certainly can
>> do better in reducing the quantity. And that means that we need to
>> educate people. And that education involves traditional training,
>> documentation and clever usage of tools. If we can use hardening
>> techniques to slap developers on their fingers, that's certainly a good
>> thing. But we don't want to decouple the hardening from 'reduce the
>> flaws' as you might create the impression that it's not that important
>> to think security aware because the hardering techniques will prevent
>> the exploits anyway.
>
> You're right, but as mentioned, I do believe that we are doing pretty well
> at code quality vs., say, proprietary development, as demonstrated by
> numerous quantitative studies.  The Linux kernel is used heavily and
> across many different types of environments, with a tight user/developer
> feedback loop, and all the code is subject to public review and
> accountability.  We actually pioneered this stuff :)
>
> There is a lot of good testing happening, both in the community and via
> corporate QA, and of course there can be more, but the point of this
> proposal is that we are not leading in kernel self-protection and in fact
> somewhat behind the state of the art.  This is a problem which we
> specifically need to address in consultation with the research community
> and with core kernel folk on board.
>
> I'm not saying the other stuff is not important, it absolutely is, but I
> wanted to specifically highlight kernel self-protection as a significant
> issue requiring collaboration between different groups.

Right. We already know how to do bug-hunting, testing, etc. They can
surely be improved, but right now I think we need to spend time
learning how to build these kinds of defenses.

> There's no reason we can't have an expanded track, including an education
> session for kernel developers as mentioned above, as well as a testing
> session, and collect these together with kernel self-protection as a
> "kernel security hardening" track.  (This is of course distinct from
> functional security mechanisms, which we covered at LSS last week). I
> didn't want to have such a wide scope given limited availability of core
> developers on any one topic, but if folk are happy to consider expanding
> it, then fine.

We could have everyone write their first kernel privilege escalation exploit. :)

-Kees

-- 
Kees Cook
Chrome OS Security
