Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F34B17AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 18:21:42 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 562EB161
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 18:21:42 +0000 (UTC)
Message-ID: <55C102AF.5020006@sonymobile.com>
Date: Tue, 4 Aug 2015 11:21:35 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: <ksummit-discuss@lists.linuxfoundation.org>
References: <20150801164142.653012af@lwn.net>	<1893963.CjFnBCekyb@vostro.rjw.lan>	<20150803083311.5abd23f6@lwn.net>
	<6756795.jjv2YY7pQg@avalon>	<20150804135044.GB5180@mwanda>
	<20150804144207.GB8047@gmail.com>
In-Reply-To: <20150804144207.GB8047@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 08/04/2015 07:42 AM, Konstantin Ryabitsev wrote:
> On Tue, Aug 04, 2015 at 04:50:44PM +0300, Dan Carpenter wrote:
>> Presumably, someone has a webpage with all the docs pre-built.
> 
> https://www.kernel.org/doc/htmldocs/

That's good.  When this thread started I tried looking for
an online instance of prebuilt docs, but the latest one I found 
was for 2.6.30.

If this is maintained consistently, maybe this site should be
(wait for it...) documented somewhere. ;-)

On a more serious note, I'd be in favor of:
1) switching to markdown or AsciiDoc.  Pandoc markdown
looks pretty capable, but I wouldn't want to introduce
a dependency on Haskell.  I think for the types of things
we do, just about any markdown would do.  Pandoc claims
to be able to convert between many different formats,
including AsciiDoc, and to convert to many different outputs.

I think having plain text will lower the barrier to
editing the docs.

2) keeping the intro texts in the source files.  That
way doc changes should be more visible to maintainers,
and they're arguably more accessible when you're poking
around the code.
 -- Tim
