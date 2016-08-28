Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C5438305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 23:39:42 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0226.hostedemail.com
	[216.40.44.226])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 494F51D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 23:39:42 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 3B7AFB16FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 23:20:57 +0000 (UTC)
Message-ID: <1472426452.26978.151.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Levin, Alexander" <alexander.levin@verizon.com>
Date: Sun, 28 Aug 2016 16:20:52 -0700
In-Reply-To: <20160828223759.GA12993@sasha-lappy>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
	<1472404557.26978.84.camel@perches.com>
	<20160828223759.GA12993@sasha-lappy>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <levinsasha928@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 2016-08-28 at 18:37 -0400, Levin, Alexander wrote:
> On Sun, Aug 28, 2016 at 01:15:57PM -0400, Joe Perches wrote:
> > On Sat, 2016-08-27 at 22:47 -0400, Levin, Alexander wrote:
> > > Would you agree that by default we shouldn't show anything that's
> > > not an error/defect?
> > Not particularly, no.
> I think that we need to figure out this disagreement first then. My
> claim is that checkpatch's output isn't useful.
[]
> It'll be interesting to hear from these people about their view of
> checkpatch, but IMO when on average there are more issues than commits
> I can suggest two possible causes:
> 
>  1. People are used to ignore checkpatch warnings.
>  2. People aren't using checkpatch.
> 
> Can you really make the claim that this is how checkpatch is supposed
> to be working?

<shrug>.  I make no particular claims about checkpatch.

I think checkpatch isn't particularly useful for those
thoroughly inculcated in what style the kernel uses and
is more useful for infrequent or new submitters.

The long time submitters and key maintainers are already
pretty consistent about coding style.

It would be good to examine the specific messages though.

For instance, Thomas Gleixner's messages for 200 commits:

     81 WARNING:COMMIT_LOG_LONG_LINE
     71 WARNING:BAD_SIGN_OFF
     37 WARNING:LONG_LINE
     22 WARNING:AVOID_BUG
     17 ERROR:SPACING
     16 WARNING:TYPO_SPELLING
     13 WARNING:UNSPECIFIED_INT
      7 ERROR:GIT_COMMIT_ID
      6 WARNING:MINMAX
      2 WARNING:PREFER_PR_LEVEL
      2 WARNING:LONG_LINE_COMMENT
      2 WARNING:LEADING_SPACE
      2 WARNING:FILE_PATH_CHANGES
      2 ERROR:CODE_INDENT
      1 WARNING:SUSPECT_CODE_INDENT
      1 WARNING:SPACING
      1 WARNING:ONE_SEMICOLON
      1 WARNING:LINE_SPACING
      1 WARNING:BLOCK_COMMENT_STYLE
      1 ERROR:TRAILING_STATEMENTS
      1 ERROR:INITIALISED_STATIC
      1 CHECK:PARENTHESIS_ALIGNMENT

28 ERRORs and a lot more WARNINGs

It seems that most of the BAD_SIGN_OFF uses are where
he signed his original patches and then did something
like git-am -s on those same patches.

The COMMIT_LOG_LONG_LINE messages are almost all just
slightly over the generic 80 column output when used
with just "git log".

I think the rest of the messages are reasonable and
generally follow CodingStyle.
