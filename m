Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CFA5C0B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 23:13:41 +0000 (UTC)
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 01C8A19F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 23:13:39 +0000 (UTC)
Received: by obbfr1 with SMTP id fr1so127275822obb.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 16:13:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGXu5j+JNkdMHQJL=2AGQhB+dR9sZPJDG=NPafbdODMs6EexzQ@mail.gmail.com>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<CAGXu5j+JNkdMHQJL=2AGQhB+dR9sZPJDG=NPafbdODMs6EexzQ@mail.gmail.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 24 Aug 2015 16:13:19 -0700
Message-ID: <CALCETrVKOvKmhG3CORia9xAYx3ucUqFSr3HvSPchBMTjSQo7oA@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
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

On Mon, Aug 24, 2015 at 3:55 PM, Kees Cook <keescook@chromium.org> wrote:
> On Mon, Aug 24, 2015 at 1:09 PM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
>> On Mon, 2015-08-24 at 09:35 -0700, Kees Cook wrote:
>>>  The
>>> hardening the kernel needs is about taking away exploitation tools,
>>> not killing bugs. (Though killing bugs is still great.)
>>
>> It's both.  One of the old standards for attacking C code was buffer
>> overruns.  Remove those via detection tools and you reduce the attack
>> surface.
>
> Well, attack surface is just what interfaces are exposed to an
> attacker. But yes, killing bug classes is important. Making bugs
> unexploitable is even better because then security bugs really do just
> become bugs.

There are plenty of cases where mitigation of an exploit technique
class changes a family of bugs from privilege escalation to DoS, and
that's a big deal.  For example, min mmap addresses mostly turn
NULL-pointer dereferences into DoS.  SMAP (and, to a lesser extent,
UDEREF) turns "upside-down" gsbase (a lovely x86ism that's involved in
the BadIRET privesc and quite a few others) into just DoS.

These aren't cases where it's a PITA for an attacker to get more than
DoS -- these are cases where the mitigations really do prevent
privilege escalation completely because they kick in before the
attacker gets to control a value that's used for anything.

--Andy
