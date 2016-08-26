Return-Path: <gregkh@linuxfoundation.org>
Date: Fri, 26 Aug 2016 13:56:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: James Hogan <james.hogan@imgtec.com>
Message-ID: <20160826115653.GA28645@kroah.com>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
	<20160826114205.GA16682@jhogan-linux.le.imgtec.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160826114205.GA16682@jhogan-linux.le.imgtec.org>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "Levin,
	Alexander" <alexander.levin@verizon.com>
Subject: Re: [Ksummit-discuss] Self nomination - Sasha Levin
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 12:42:05PM +0100, James Hogan wrote:
> On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
> > On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
> > >    - Improving tagging for stable. The "version tag" option is broken
> > >    and the "Fixes:" tag is always preferable, how do we get people to
> > >    use that more often? (script it somehow?
> > >    scripts/find-version-it-fixes ?).
> > 
> > Oh a script like that would be nice, but how would that work in reality?
> 
> Not all Fixes: tags are suitable for stable though. I've been caught out
> by patches being applied to stable (4.2 maybe) due to a Fixes tag,
> without prerequisite patches being applied.

Yeah, it is true, but it gives me a hint as to where I should stop at,
or where I should look around at.  If I see a "3.14" mark, and the patch
doesn't apply at all there, then I'll push back on the developer of the
patch to see if they can provide a version for that kernel.  If I don't
have that mark, and it doesn't apply to 3.14, I'll just drop it on the
floor as "obviously" it doesn't apply there.

> FWIW I have a git alias that blames a git diff or commit (I think based
> on an old version of [1] with some fixes). That doesn't necessarily tell
> you where a problem was introduced, but it sure can help if the problem
> was introduced nearby the fix (and for fixup commits before a rebase).
> 
> Food for thought if nothing else.
> 
> E.g. 
> 
> $ git blame-show v4.8-rc2
> commit 694d0d0bb2030d2e36df73e2d23d5770511dbc8d
> Author:     Linus Torvalds <torvalds@linux-foundation.org>
> AuthorDate: Sun Aug 14 19:11:36 2016 -0700
> Commit:     Linus Torvalds <torvalds@linux-foundation.org>
> CommitDate: Sun Aug 14 19:11:36 2016 -0700
> 
>     Linux 4.8-rc2
> 
> diff --git a/Makefile b/Makefile
> index 8c504f324154..5c18baad7218 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1,7 +1,7 @@
> Blaming lines:   0% (7/1684), done.
> Blaming lines:   0% (7/1684), done.
>   c517d838eb7d0 (Linus Torvalds   VERSION = 4
>   29b4817d4018d (Linus Torvalds   PATCHLEVEL = 8
>   55922c9d1b84b (Linus Torvalds   SUBLEVEL = 0
> - 29b4817d4018d (Linus Torvalds  -EXTRAVERSION = -rc1
> + 694d0d0bb2030 (Linus Torvalds  +EXTRAVERSION = -rc2
>   1a695a905c185 (Linus Torvalds   NAME = Psychotic Stoned Sheep
>   ^1da177e4c3f4 (Linus Torvalds   
>   ^1da177e4c3f4 (Linus Torvalds   # *DOCUMENTATION*
> 
> Cheers
> James
> 
> [1] https://github.com/dmnd/git-diff-blame/blob/master/git-diff-blame

Oooh, nice!  Care to push this "upstream" to get it merged into git for
everyone to use?  It looks helpful to me.

thanks,

greg k-h
