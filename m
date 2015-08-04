Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 56749847
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 21:00:14 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E763B13D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 21:00:13 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 05 Aug 2015 00:00:59 +0300
Message-ID: <1891718.ZRACi8n4El@avalon>
In-Reply-To: <55C102AF.5020006@sonymobile.com>
References: <20150801164142.653012af@lwn.net> <20150804144207.GB8047@gmail.com>
	<55C102AF.5020006@sonymobile.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Tim,

On Tuesday 04 August 2015 11:21:35 Tim Bird wrote:
> On 08/04/2015 07:42 AM, Konstantin Ryabitsev wrote:
> > On Tue, Aug 04, 2015 at 04:50:44PM +0300, Dan Carpenter wrote:
> >> Presumably, someone has a webpage with all the docs pre-built.
> > 
> > https://www.kernel.org/doc/htmldocs/
> 
> That's good.  When this thread started I tried looking for
> an online instance of prebuilt docs, but the latest one I found
> was for 2.6.30.
> 
> If this is maintained consistently, maybe this site should be
> (wait for it...) documented somewhere. ;-)
> 
> On a more serious note, I'd be in favor of:
> 1) switching to markdown or AsciiDoc.  Pandoc markdown
> looks pretty capable, but I wouldn't want to introduce
> a dependency on Haskell.  I think for the types of things
> we do, just about any markdown would do.  Pandoc claims
> to be able to convert between many different formats,
> including AsciiDoc, and to convert to many different outputs.
> 
> I think having plain text will lower the barrier to
> editing the docs.
> 
> 2) keeping the intro texts in the source files.  That
> way doc changes should be more visible to maintainers,
> and they're arguably more accessible when you're poking
> around the code.

It's more than intro text in my opinion. Look at 
https://www.kernel.org/doc/htmldocs/drm/index.html, it tries to be a 
guide/walk-through type of documentation. The amount of documentation is so 
large that it would be quite impractical to keep it in source files. Or we 
could have source files containing only documentation comments, but that would 
defeat the point :-)

-- 
Regards,

Laurent Pinchart
