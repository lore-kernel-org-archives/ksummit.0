Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 50C5FB8F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 22:57:23 +0000 (UTC)
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D9797143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 22:57:22 +0000 (UTC)
Received: by igfj19 with SMTP id j19so73057556igf.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Aug 2015 15:57:22 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <alpine.LRH.2.20.1508250612360.22949@namei.org>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<alpine.LRH.2.20.1508250612360.22949@namei.org>
Date: Mon, 24 Aug 2015 15:57:22 -0700
Message-ID: <CAGXu5jJxQadzp_bOo0KVjJ0VgwTPBDaEHqxDe8Rr=aCg8ROg9A@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
To: James Morris <jmorris@namei.org>
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

On Mon, Aug 24, 2015 at 1:17 PM, James Morris <jmorris@namei.org> wrote:
> On Mon, 24 Aug 2015, James Bottomley wrote:
>
>> Um, forgive me for being dense, but doesn't fixing the flaws stop their
>> exploitation?  In any event, Hardening means "reducing the attack
>> surface" and that encompasses both active and passive means (including
>> actual bug fixing).
>
> Hardening is mitigating those flaws.  You'll never find every flaw, but
> you can mitigate against entire classes of flaws being exploited.
>
>> >  The
>> > hardening the kernel needs is about taking away exploitation tools,
>> > not killing bugs. (Though killing bugs is still great.)
>>
>> It's both.  One of the old standards for attacking C code was buffer
>> overruns.  Remove those via detection tools and you reduce the attack
>> surface.
>
> In this case, we're specifically talking about hardening the kernel to
> mitigate exploitation of flaws.  Kernel self-protection may be a better
> term (and recently surfaced in an NSA presentation at LSS: p.23 of
>
> http://kernsec.org/files/lss2015/lss2015_selinuxinandroidlollipopandm_smalley.pdf

Yup. Using "kernel self-protection" cuts right to the point. I'm in
debt to Stephen for finding the right marketing term for "kernel
memory corruption vulnerability exploit mitigation". :)

-Kees

-- 
Kees Cook
Chrome OS Security
