Return-Path: <konstantin@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 55356220F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 21:16:10 +0000 (UTC)
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0AD45836
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 21:16:09 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id n11so189471qtl.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Jul 2019 14:16:09 -0700 (PDT)
Date: Tue, 2 Jul 2019 17:16:06 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20190702211606.GA23036@chatter.i7.local>
References: <alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
	<1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <201907020926.FB19EDEBCC@keescook>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 02, 2019 at 09:30:34AM -0700, Kees Cook wrote:
>On Tue, Jul 02, 2019 at 08:51:53AM -0700, James Bottomley wrote:
>> Yes, I think we all agree on this.  The real question is how.  If we
>> make git do it, I think trivially Message-Id: can become part of the
>> optional metadata.  Or we could all use commit hooks that add a link
>> tag.  Personally I prefer the former because it would be universally
>> done with no effort but I recognise it would take time to get the
>> ecosystem change to propagate.
>
>I think this should be easy to implement in a general way. I suspect
>there wouldn't be much love for hard-coding the details, though, so
>maybe it would require per-developer git configuration. I imagine a
>general mapping would need to be:
>
>list_email -> archive_url
>
>i.e. if "$list_email" is in the To/Cc, then "git am" can easily insert
>the Message-Id into the "$archive_url". For example:
>
>linux-kernel@vger.kernel.org -> https://lkml.kernel.org/r/%s

BTW, if you are a mutt user, there's this handy tool that will 
automatically display canonical links to lore.kernel.org for every 
message that comes from a mailing list archived there:

https://github.com/danrue/lorifier


-K
