Return-Path: <shuahkhan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E138D87D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Aug 2014 02:55:09 +0000 (UTC)
Received: from mail-qa0-f47.google.com (mail-qa0-f47.google.com
	[209.85.216.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 46FD31F8BD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Aug 2014 02:55:09 +0000 (UTC)
Received: by mail-qa0-f47.google.com with SMTP id x12so2911919qac.20
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 29 Aug 2014 19:55:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <F5184659D418E34EA12B1903EE5EF5FD015DCAE7ABB8@seldmbx02.corpusers.net>
References: <20140819163621.GA15109@linux.vnet.ibm.com>
	<CACxGe6vUXr_uqLG_98oAgbcjddsNgXWdGMrtJ8t23tQ1+z5iag@mail.gmail.com>
	<CAKocOOMG91D7Qam5PLY0Dd7bR07GMHHYsRCqUMYQGCR-hB2+=w@mail.gmail.com>
	<F5184659D418E34EA12B1903EE5EF5FD015DCAE7ABA1@seldmbx02.corpusers.net>
	<F5184659D418E34EA12B1903EE5EF5FD015DCAE7ABB8@seldmbx02.corpusers.net>
Date: Fri, 29 Aug 2014 20:55:08 -0600
Message-ID: <CAKocOOOqSPGjvJcfn_HFZgbZDRH2WFqpTJVBip2jNfhEDYEv2w@mail.gmail.com>
From: Shuah Khan <shuahkhan@gmail.com>
To: "Bird, Tim" <Tim.Bird@sonymobile.com>
Content-Type: text/plain; charset=UTF-8
Cc: "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [kselftest] kselftest wiki (was RE: Fwd:
 Rough notes from testing unconference)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 29, 2014 at 7:09 PM, Bird, Tim <Tim.Bird@sonymobile.com> wrote:
> On Saturday, August 23, 2014 6:35 AM, Bird, Tim wrote:
>> Also, I've requested a 'test' wiki on kernel.org, where we can place
>> notes, ideas, and lists of things to work on, or things in progress
>> (like possible output format guidelines).
>>
>> I'll let everyone know when the wiki is set up.
>
> There is now a kselftest wiki on kernel.org at:
> https://kselftest.wiki.kernel.org/
>
> I believe anyone with a Linux Foundation account can edit it.
> I have put together a main page, along with a few sub-pages for
> some of the sub-projects (as I call them) that were discussed at
> the kernel summit.
>
> Please feel free to directly edit the wiki, or to let me know if
> there's any content you'd like to see placed on the wiki.
>

Thanks for doing this.

>
> P.S.  I have copied lkml and linux-api on this.  I believe this is the first
> use of linux-api for discussions about kselftest.  If the linux-api maintainers
> would prefer we get our own list, please let me know.

I spoke to a few folks and gave a heads up to Michael Kerrisk about using
linux-api for kselftest - so far no objections to using it. I sent in
a patch adding
entry for Kselftest framework to MAINTAINERS file with linux-api as the
mailing list. I have a git for this:

git git://git.kernel.org/pub/scm/shuah/linux-kselftest

I couldn't edit the wiki to add this detail even after logging into my
LF account.
Might have to request for access perhaps.

thanks,
-- Shuah
