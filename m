Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C7E1C8FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 07:45:03 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net
	[217.70.183.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C017E121
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 07:45:02 +0000 (UTC)
Date: Thu, 21 Jul 2016 00:44:53 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20160721074453.GA11126@x>
References: <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715014103.GA5791@kroah.com> <578850EB.3090109@roeck-us.net>
	<20160715042938.GA5527@kroah.com>
	<CAKMK7uGPWusxsCRt9yELDrVd1v+rNsH3UWeTZdVBOZv+zw=iYA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKMK7uGPWusxsCRt9yELDrVd1v+rNsH3UWeTZdVBOZv+zw=iYA@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 21, 2016 at 09:13:37AM +0200, Daniel Vetter wrote:
> Random tool plug: I stitched together a quilt+git thing, which through
> hidden git refs makes sure that the underlying git baseline also gets
> pushed around together with the quilt patches. Allows awesome stuff
> like bisecting changes in the quilt pile over rebases:
> 
> https://cgit.freedesktop.org/drm-intel/tree/qf?h=maintainer-tools
> 
> We use that to maintain the internal drm/i915 patches. Unfortunatel
> everyone else uses plain git, since I fully agree with Greg: Quilt (or
> some other pile-of-patches tool) is the only way to sanely manage
> kernel trees which aren't directly upstream.

I just released a tool I've been working on to address that problem:
https://github.com/git-series/git-series

I plan to announce it on LKML and various other places at some point,
but since the topic came up and people are looking at workflows, it
seemed worth mentioning here.

git-series handles the "history of a patch series" problem, tracking
both the patches themselves and the history of the patch series in git.
It also tracks the baseline, and the cover letter.  And even when the
patch series goes through non-fast-forwarding changes like rebase -i or
rebasing onto a new baseline, git-series tracks that with refs that
themselves fast-forward and can be pushed and fetched with normal git
tools.

I wrote it after the Nth time of running into this problem and talking
to other people who ran into this problem.  Usually, you either have to
pull the patch series out of git into quilt to version it, or or you
keep the patches in git and version by branch names (which rapidly
start looking like filenames from a corporate email system).

Here's the manpage:

NAME
       git-series - track changes to a patch series with git

SYNOPSIS
       git series [SUBCOMMAND] [OPTIONS]

DESCRIPTION
       git  series  tracks  changes  to a patch series over time.  git
       series also tracks a cover letter for the patch series, formats
       the series for email, and prepares pull requests.

       Use git series start seriesname to start a patch series series‐
       name.  Use normal git commands to commit changes, and  use  git
       series  status to check what has changed.  Use git series cover
       to add or edit a cover letter.  Use  git  series  add  and  git
       series  commit  (or  git series commit -a) to commit changes to
       the patch series.  Use git series rebase -i to help  rework  or
       reorganize  the patch series.  Use git series format to prepare
       the patch series to send via email, or git series req  to  pre‐
       pare a "please pull" mail.

       Running  git  series  without arguments shows the list of patch
       series, marking the current patch series with a '*'.

SUBCOMMANDS
       git series add change...
              Add changes to the staging area for the next git  series
              commit.

              change...
                     Changes  to  add:  any  combination  of "series",
                     "base", and "cover".

       git series base [-d|--delete] [base]
              Get or set the base commit for the patch  series.   With
              no  parameters, print the hash of the base commit.  With
              parameters, set or delete the base commit.

              This only changes the base in the working version of the
              patch series; use git series add base to add that change
              to the next git series commit, or use git series  commit
              -a  to  commit the new base and all other changes to the
              series in one step.

              base   New base commit.  This can use a commit hash, ref
                     name,  or  special  syntaxes  such as refname^ or
                     refname~2.

              -d|--delete
                     Delete the current base commit.

       git series checkout name
              Resume work on the patch series name; check out the cur‐
              rent version as HEAD.

       git series commit [-a|--all] [-m message] [-v|--verbose]
              Record a new version of the patch series.  Without argu‐
              ments, this will run an editor to edit a commit message,
              and  then  commit  the changes previously added with git
              series add.

              -a|--all
                     Commit all changes, not just those added with git
                     series add.

              -m message
                     Use  message  as  the commit message, rather than
                     running an editor.

              -v|--verbose
                     Show a diff of the commit in  the  editor,  below
                     the  commit message, as a reminder of the changes
                     in the commit.  This diff will not appear in  the
                     commit message.

       git series cover [-d|--delete]
              Create  or  edit  the cover letter for the patch series.
              Without arguments, this will run an editor to  edit  the
              cover letter.

              This  only  changes the cover letter in the working ver‐
              sion of the patch series; use git series  add  cover  to
              add  that  change  to the next git series commit, or use
              git series commit -a to commit the new cover letter  and
              all other changes to the series in one step.

              -d|--delete
                     Delete the cover letter rather than editing it.

       git series delete name
              Delete  the series name, including any work in progress,
              staged or unstaged.

       git series detach
              Stop working  on  any  patch  series.   Any  changes  in
              progress,  staged  or  unstaged, will remain intact.  To
              start working on the branch again, use git series check‐
              out.

       git series format [--in-reply-to=Message-Id] [--stdout]
              Prepare  the  patch series to send via email.  This cre‐
              ates one file per patch in the series,  plus  one  addi‐
              tional  file  for  the  cover  letter if any.  The patch
              series must have a base set with  git  series  base,  to
              identify the series of patches to format.

              Each  file  contains  one email in mbox format, ready to
              send, with  email  headers  threading  all  the  patches
              together.   If the series has a cover letter, all of the
              patches will include headers to make them a reply to the
              cover letter; otherwise, all of the patches will include
              headers to make them a reply to the first patch.

              --in-reply-to=Message-Id
                     Make the first mail a reply to the specified Mes‐
                     sage-Id.   The Message-Id may include or omit the
                     surrounding angle brackets; git-series  will  add
                     them if not present.

              --stdout
                     Write  the  entire  patch series to stdout rather
                     than to separate patch files.

       git series help [subcommand]
              Show help for git series or a subcommand.  Without argu‐
              ments,  shows  a summary of the subcommands supported by
              git series.

              subcommand
                     Show help for subcommand.

       git series log [-p|--patch]
              Show the history of the patch series.

              -p|--patch
                     Include a patch for each change committed to  the
                     series.

       git series rebase [-i|--interactive] [onto]
              Rebase  the patch series, either onto a new base, inter‐
              actively, or both.  The patch series must  have  a  base
              set  with  git  series  base,  to identify the series of
              patches to rebase.

              onto   Commit to rebase the series onto.  This can use a
                     commit  hash,  ref name, or special syntaxes such
                     as refname^ or refname~2.

              -i|--interactive
                     Interactively edit the  list  of  commits.   This
                     uses the same format and syntax as git rebase -i,
                     to  allow  reordering,  dropping,  combining,  or
                     editing commits.

       git series req [-p|--patch] url tag
              Generate a mail requesting a pull of the patch series.

              Before  running  this  command, push the patch series to
              the repository at url, as a tag or branch named tag.

              A pull request  for  a  signed  or  annotated  tag  will
              include the message from the tag.  The pull request will
              also include the cover letter if  any,  unless  the  tag
              message  already contains the cover letter.  The subject
              of the mail will include the first line from  the  cover
              letter, or the name of the series if no cover letter.

              The  patch  series  must have a base set with git series
              base, to identify the series of  patches  to  request  a
              pull of.

              url    URL of the repository to pull from.

              tag    Name of a tag or branch to request a pull from.

              -p|--patch
                     Include  a patch showing the combined change made
                     by all the patches in the series.  This can  help
                     a reviewer see the effect of pulling the series.

       git series start name
              Start a new patch series named name.

       git series status
              Show the status of the current patch series.

              This  shows  any  changes staged for the next git series
              commit, changes in the  current  working  copy  but  not
              staged  for  the next git series commit, and hints about
              the next commands to run.

       git series unadd change
              Remove changes from the next git series commit,  undoing
              git series add.

              The changes remain in the current working version of the
              series.

              change...
                     Changes to remove: any combination  of  "series",
                     "base", and "cover".
