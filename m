Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F5B08B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 23:25:38 +0000 (UTC)
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7B900A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 23:25:37 +0000 (UTC)
Received: by igcqs7 with SMTP id qs7so69539149igc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 16:25:37 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <1436599873.2243.10.camel@HansenPartnership.com>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
Date: Mon, 13 Jul 2015 16:25:36 -0700
Message-ID: <CAGXu5jJdmwdKw6CYwMNUCDKai0M5UrghYn1c3tTwqudLwdbO0A@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] dev/maintainer workflow security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 11, 2015 at 12:31 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Fri, 2015-07-10 at 15:08 -0700, Kees Cook wrote:
>>   - personal security (keep commit credentials secure from theft)
>
> This second one is a bit of a red herring:  Assuming you did steal my
> credentials, how would you use them without being detected?

Well, I meant it in a general sense. Whether that's your ssh key, or
direct access to your entire network through backdoored network card
firmware and SMM code, there are TONS of way to be owned without being
detected. :)

> Security is not an absolute, it's a tradeoff.  The point of the tradeoff
> is to make sure you address the significant threats while not impeding
> the workflow too much.  If we start worrying about and addressing
> insignificant threats, eventually you won't get on to kernel.org without
> going through airport theatre style security.

We have one thing that a lot of other workflows don't: transparency,
so we can examine commit histories, etc. This makes credential theft
much less useful (which I think was your point).

>> - reactive security: bug fix workflow
>>   - getting fixes _to end users_ (not the same as publishing to stable)
>
> Stable is our last point.  After that, it's up to the distros

I don't agree with this. Distros are just one consumer. I think it's
worth examining how real-world devices end up running Linux. Telcos
pushing kernel updates, for example, jumps to mind. I think it's a
weak stance to say "well, they should update to the latest kernel". Is
it a failing of our community that it's so much work for these vendors
to update kernels? Is offering an LTS "good enough", or can we do
more? It's Linux's name that gets smeared by vendors who are terrible
at updating kernels. :(

>>   - documenting impact when known (avoiding intentional obfuscation)
>> - proactive security: stop security flaws from happening in the first place
>>   - scope analysis (defending both userspace and kernel from attack)
>>   - threat analysis (how are attacks being made now and in future?)
>>   - exposure analysis (syscall interface, device firmware, etc)
>>   - static checkers (find and eliminate bug classes in the code)
>>   - run-time mitigation features (endless list: memory protection, CFI,
>>     ASLR, anti-bruteforcing, etc)
>
> Perhaps the question here is would we be interested in making use of the
> core infrastructure initiative to give us a security analysis of parts
> of the kernel (and if so, which parts).

I actually think the issue is body count. We have a lot of tools
already. We have coverity, for example, but it needs full-time work
(by a few people, I think) to trim false-positives, improve rules, and
extract the real bugs. Which companies are paying people to do this
full-time? Our numbers aren't improving much in this area. We've
actually been getting smaller... Dave Jones, come back, we all still
love Trinity! :)

-Kees

-- 
Kees Cook
Chrome OS Security
