Return-Path: <rdunlap@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 856ED8A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 04:11:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1251C1F9BE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 04:11:54 +0000 (UTC)
Message-ID: <538FEE06.9060902@infradead.org>
Date: Wed, 04 Jun 2014 21:11:50 -0700
From: Randy Dunlap <rdunlap@infradead.org>
MIME-Version: 1.0
To: Theodore Ts'o <tytso@mit.edu>
References: <20140604130646.GA25092@thunk.org> <538F46CA.70303@infradead.org>
	<20140604165224.GA3127@thunk.org>
In-Reply-To: <20140604165224.GA3127@thunk.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] If you are using gmail,
	check your spam folders
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 06/04/2014 09:52 AM, Theodore Ts'o wrote:
> On Wed, Jun 04, 2014 at 09:18:18AM -0700, Randy Dunlap wrote:
>>
>> I often get rejects from gmail when I reply to email and one of the
>> Cc:s is torvalds@, akpm@, or gregkh@  linux-foundation.org (which is
>> using gmail).  It's all bogus AFAIK.  It's just Linux patch-related stuff.
> 
> Are you getting outright rejects, or is it ending up in Linus's spam
> folder?  (Which has happened to me with a PULL request, which is why I
> set up DKIM....)

They say: ... this message has been blocked. ...
That's an outright reject?

> In any case, if you get outright rejects, if you can save the full
> e-mail (including headers) in a file, and then put it somewhere I can
> download it, I'd much appreciate it.  (I've been having false
> positives with MIT's Brightmail anti-spam service, so this problem is,
> alas, not unique to Gmail.  So if you want to send me samples which
> Gmail has rejected as spam, it's better to put it up on a web or ftp
> server, and send me the URL.)

I'll do that now and send you the URLs.

> If it ends up in a gmail spam folder, it's best if you can get the
> recipient to send me the full e-mail, complete with headers.
> 
> The reason why the headers are useful is because we can use these to
> hopefully send complaints to the anti-SPAM folks and ask them what's
> up with their algorithms.  For example, this was bounced by Gmail
> despite the SPF and DKIM pass indications:

Thanks for your help.

-- 
~Randy
