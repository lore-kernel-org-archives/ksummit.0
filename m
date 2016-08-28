Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 030676C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 12:22:58 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0239.hostedemail.com
	[216.40.44.239])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56ECB1AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 12:22:57 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave03.hostedemail.com (Postfix) with ESMTP id A00B628DB1D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 01:43:04 +0000 (UTC)
Message-ID: <1472348579.26978.47.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Levin, Alexander" <alexander.levin@verizon.com>
Date: Sat, 27 Aug 2016 18:42:59 -0700
In-Reply-To: <20160828005636.GB19088@sasha-lappy>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
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

On Sat, 2016-08-27 at 21:06 -0400, Levin, Alexander wrote:
> On Sat, Aug 27, 2016 at 04:40:52PM -0400, Joe Perches wrote:
> > On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
> > > On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
> > > > 
> > > >     - Making checkpatch check for (some) of the stable kernel rules
> > > >     (and possibly recommend adding the stable@ tag in certain cases?).
> > > >       - Depends on: making checkpatch sane again
> > > > >This sounds interesting.  What do you mean by "sane"?
> > Sasha, can you expand your thoughts here please?
> Sure. I have 2.5 concerns about the state of checkpatch:
[]
> > Most all of the trivial spacing stuff can easily be
> > ignored either by a human determining what's important
> > or by using command line options like --ignore=spacing
> 1.
> This is the wrong default. By default checkpatch shouldn't be showing trivial
> issues that encourage folks to try and work around them and as a result
> produce worse code.
> 
> Look at the 80 character limit warning for example, what good does it do?

That argument's been done several times. It keeps Linus happy.
I don't care one way or another.

I think the biggest issue is the seriousness that some people
take checkpatch messages as dicta instead of ignorable bleats.

I still think ERROR->defect, WARNING->unstylish, CHECK->nitpick
would be a good change.

https://lkml.org/lkml/2015/7/16/568

>  It
> encourages people to do even stupider things to work around it and results in
> a bunch of "fix checkpatch warning" that touch existing code just to make the
> result harder to read and make 'git blame' harder to work with.

Almost all of the crud in git-blame can be avoided with -w

> By default you should only get the most critical warnings we have in the
> kernel like missing S-O-B or corrupt patch.

I don't think so, but if you do, add a filter for ERROR only.

> 2. A "who wrote these rules?": there seems to be a disconnect between the rules
> checkpatch is trying to enforce and the accepted coding style enforced by
> maintainers. 

Name some please.

> Do a git-format-patch on all of the commits Linus authored in the past year or
> two and see how many of them fail checkpatch (or do the same for any of the
> commits that passed through and were accepted by the top maintainers),
> according to checkpatch we need to make those guys stop touching the kernel.

Try it yourself and tell me what's wrong with the messages:

$ git log --pretty=oneline --author=torvalds --no-merges --since=1-year-ago | \
  grep -v " Linux [34]" | \
  while read commit ; do \
    echo $commit ; \
    git log --stat -p -1 --format=email $(echo $commit | cut -f1 -d" ")  | \
      ./scripts/checkpatch.pl - ; \
  done

Here's a summary done with an additional

  grep -P "^(ERROR|WARNING)" | cut -f1,2 -d":" | \
  sort |uniq -c | sort -rn

     46 WARNING:LONG_LINE_COMMENT
     45 WARNING:LEADING_SPACE
     37 WARNING:LONG_LINE
     16 ERROR:GIT_COMMIT_ID
     11 WARNING:COMMIT_LOG_LONG_LINE
      5 WARNING:BRACES
      2 WARNING:BAD_SIGN_OFF
      2 WARNING:AVOID_BUG
      2 ERROR:SPACING
      1 WARNING:SPLIT_STRING
      1 WARNING:FILE_PATH_CHANGES
      1 WARNING:ENOSYS
      1 ERROR:MISSING_SIGN_OFF

> 3. This one is somewhat subjective: scripts/checkpatch.pl is a massive blob of
> perl code that a fair amount of people don't know how to deal with. In 4.8 it's
> 6142 lines, making it the 124th largest source file in the kernel, well within
> the top 1% of source files in the kernel.
> 
> This combination of size/language pushes people away from being involved in
> what is supposed to be a central tool and gives them a reason to never use
> it again after they see results they don't agree with (rather than fixing it).

Meh, I'm not a perl guy either.

I think almost all of it is regexes and most people
aren't very good at those.

So it wouldn't matter if it was perl or python.

spatch isn't the right tool.

What would you suggest instead?
