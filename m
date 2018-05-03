Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB77682
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 00:06:27 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 82CD762A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 00:06:26 +0000 (UTC)
Date: Wed, 2 May 2018 20:06:20 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20180503000620.GA29205@thunk.org>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 02, 2018 at 10:41:56PM +0200, Geert Uytterhoeven wrote:
> 
> Between v4.17-rc1 and v4.17-rc3, there are 660 non-merge commits, of which
>   - 245 carry a Fixes tag,
>   - 196 carry a CC stable,
>   - 395 contain the string "fix".
> (non-mutually exclusive)
> 
> That leaves us with 200 commits not falling in the bugfix category.

Some non-bug fixes are allowed in -rc2.  So perhaps what might be
interesting is to look at v4.16 (which is completed), and look at the
distribution of commits:

	* regressions fixes (for bugs introduced during the current
		release cycle)
	* "normal" bug fixes
	* commits which don't touch code (e.g., spelling or
		documentation-only fixes)
	* other commits (features or cleanup fixes)

at each rcX level.  The historic "standard" has been feature commits
in -rc1 and -rc2 (tolerated, but ideally should before the merge
window), bug fixes / regressions in -rc3 and -rc4, and after -rc4,
regression fixes only.  It would be interesting to see how well we
have been holding to the historical ideal.

It would then be intersting to use Sasha's analysis to see whether
there are more bug fixes caused by regression fixes versus normal bug
fixes, and whether or not they are common when fixes come "out of
cycle" --- for example, a non-regression bug fix in -rc5 or -rc6.

Because if that last is the case, then the prescription is very simple
and not controversial --- bug fixes found post -rc4 should be held to
the next merge window.

If the concern is regression fixes which require one or two tries
before they are fixed before 4.16-FINAL is released, then that's a
"life is hard for AUTOSEL" issue, and I suspect Sasha will find that
there is rather less sympathy for holding regression fixes for an
extra week or two.
 
If the concern is bug fixes that show up in -rc3 and -rc4, but which
aren't hitting linux-next first, then holding bug fixes in linux-next
for a week makes sense, and if that means that a bug fix found post
-rc3 needs to marinate in linux-next for a week, and then it then
misses the -rc4 "bug fix" deadline, we can have a discussion about
whether bug fixes should be allowed in -rc5 after a week's marination.

My personal opinion is "to hell with it, just wait until the next
merge window" --- but this can cause more work for the stable
maintainers since a lot of bug fixes would then land in -rc1.

Cheers,

					- Ted
