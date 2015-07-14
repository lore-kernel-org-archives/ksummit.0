Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB2FEBA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 16:20:04 +0000 (UTC)
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A415CED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 16:20:03 +0000 (UTC)
Received: by iggp10 with SMTP id p10so102049768igg.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 09:20:03 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <1436860041.6901.42.camel@HansenPartnership.com>
References: <20150710143832.GU23515@io.lakedaemon.net>
	<CA+5PVA5j9973GzdYj-s2WX3J8ycf5hQTBdGq+8j-8RGDX2OaYg@mail.gmail.com>
	<20150710162328.GB12009@thunk.org>
	<CAGXu5j+NY8-5WPcP1kLZsKgzmbQ=L0Q18XZ6FYeVTcFGDLrRSw@mail.gmail.com>
	<1436599873.2243.10.camel@HansenPartnership.com>
	<CAGXu5jJdmwdKw6CYwMNUCDKai0M5UrghYn1c3tTwqudLwdbO0A@mail.gmail.com>
	<1436860041.6901.42.camel@HansenPartnership.com>
Date: Tue, 14 Jul 2015 09:20:02 -0700
Message-ID: <CAGXu5j+Zyj4BFQ9mY6AByXUa50uT6hPnovORF-FtBBMSCGcuqg@mail.gmail.com>
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

On Tue, Jul 14, 2015 at 12:47 AM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Mon, 2015-07-13 at 16:25 -0700, Kees Cook wrote:
>> I don't agree with this. Distros are just one consumer. I think it's
>> worth examining how real-world devices end up running Linux. Telcos
>> pushing kernel updates, for example, jumps to mind. I think it's a
>> weak stance to say "well, they should update to the latest kernel". Is
>> it a failing of our community that it's so much work for these vendors
>> to update kernels? Is offering an LTS "good enough", or can we do
>> more? It's Linux's name that gets smeared by vendors who are terrible
>> at updating kernels. :(
>
> While security fixes (and the kernel security list) aren't transparent,
> I don't really see what else we can do.  Stable is our last best effort
> before it gets handed off, unless you have another proposal?

I don't presently, no. Stable is certainly good, but I think we're
missing a "real world workload testing" element somewhere. Again,
though, this should probably be on the vendors, but there is very
little interest in it, since the ROI appears bad.

>
>> >>   - documenting impact when known (avoiding intentional obfuscation)
>> >> - proactive security: stop security flaws from happening in the first place
>> >>   - scope analysis (defending both userspace and kernel from attack)
>> >>   - threat analysis (how are attacks being made now and in future?)
>> >>   - exposure analysis (syscall interface, device firmware, etc)
>> >>   - static checkers (find and eliminate bug classes in the code)
>> >>   - run-time mitigation features (endless list: memory protection, CFI,
>> >>     ASLR, anti-bruteforcing, etc)
>> >
>> > Perhaps the question here is would we be interested in making use of the
>> > core infrastructure initiative to give us a security analysis of parts
>> > of the kernel (and if so, which parts).
>>
>> I actually think the issue is body count. We have a lot of tools
>> already. We have coverity, for example, but it needs full-time work
>> (by a few people, I think) to trim false-positives, improve rules, and
>> extract the real bugs. Which companies are paying people to do this
>> full-time? Our numbers aren't improving much in this area. We've
>> actually been getting smaller... Dave Jones, come back, we all still
>> love Trinity! :)
>
> So you seem to be implying this is a funding problem?  We could easily
> apply to the CII for a full time position if that's the case (and we
> have a good job description).

It'll take more than 1 person. :) It's a cultural problem with the
tech industry: defensive security is very hard to measure, so it tends
to be ignored until something bad happens publicly. Unfortunately,
there is a LOT happening secretly that we need to defend against, and
everyone depending on Linux should be putting forward people to work
on that. Like testing, it appears to be poor ROI, though.

-Kees

-- 
Kees Cook
Chrome OS Security
