Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8F04A155B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Aug 2015 20:17:01 +0000 (UTC)
Received: from out03.mta.xmission.com (out03.mta.xmission.com [166.70.13.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 911CB19C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 31 Aug 2015 20:17:00 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Greg KH <greg@kroah.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<alpine.LNX.2.00.1508241343430.25821@pobox.suse.cz>
	<alpine.LRH.2.20.1508242150310.27693@namei.org>
	<CAGXu5jLxzAtNPc_M+kPTZw6YqD1Op6Mvb-NHnJTewFanuVsqLQ@mail.gmail.com>
	<alpine.DEB.2.11.1508242048060.15006@nanos>
	<CAGXu5jLtG0Jaf0hDkNtditSSGMxwKF8QC9aWq2Vf1A=FoAYJgA@mail.gmail.com>
	<20150824220525.GA15701@kroah.com>
Date: Mon, 31 Aug 2015 15:10:01 -0500
In-Reply-To: <20150824220525.GA15701@kroah.com> (Greg KH's message of "Mon, 24
	Aug 2015 17:05:25 -0500")
Message-ID: <871tejdxt2.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org, Jiri Kosina <jkosina@suse.cz>,
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

Greg KH <greg@kroah.com> writes:

> On Mon, Aug 24, 2015 at 12:00:15PM -0700, Kees Cook wrote:
>> On Mon, Aug 24, 2015 at 11:52 AM, Thomas Gleixner <tglx@linutronix.de> wrote:
>> > On Mon, 24 Aug 2015, Kees Cook wrote:
>> >> On Mon, Aug 24, 2015 at 4:56 AM, James Morris <jmorris@namei.org> wrote:
>> >> This is far from a comprehensive list, though. The biggest value, I
>> >> think, would be in using KERNEXEC, UDEREF, USERCOPY, and the plugins
>> >> for constification and integer overflow.
>> >
>> > There is another aspect. We need to make developers more aware of the
>> > potential attack issues. I learned my lesson with the futex disaster
>> > and since then I certainly look with a different set of eyes at user
>> > space facing code. I doubt that we want that everyone experiences the
>> > disaster himself (though that's a very enlightening experience), but
>> > we should try to document incidents and the lessons learned from
>> > them. Right now we just rely on those who are deep into the security
>> > realm or the few people who learned it the hard way.
>> 
>> Yeah, it can be a hard perspective shift to make. And shifting the
>> thinking about the kernel itself to always operating in a compromised
>> state makes thinking about how to protect it much easier. User space
>> is trying to hurt us! :)
>
> Microsoft's security team, which was responsible for forcing all of
> their developers to undergo some security training every year, has
> boiled it all down to these simple 4 words:
>
> 	All input is evil.

I have a linux version of that one.

An unprivileged user can call that.

It is absolutely amazing how much kernel code does not worry
about evil input after it checks that the caller is root.

Eric
