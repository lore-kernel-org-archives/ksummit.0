Return-Path: <tytso@thunk.org>
Date: Sat, 10 Nov 2018 16:21:59 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Joe Perches <joe@perches.com>
Message-ID: <20181110212159.GA12818@thunk.org>
References: <1541721842.3774.2.camel@HansenPartnership.com>
	<35402D8E-0294-4E34-BE8B-22BCBC20BF66@fb.com>
	<41b03a5b-1af4-0a87-2736-016f79d4d1ca@kernel.org>
	<20181109190305.GD21078@thunk.org>
	<e0ec26aa685f53e741f66e757a2cf29307ce3b7e.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e0ec26aa685f53e741f66e757a2cf29307ce3b7e.camel@perches.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Tech Board Discuss <Tech-board-discuss@lists.linux-foundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] TAB non-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Nov 09, 2018 at 11:23:26AM -0800, Joe Perches wrote:
> I believe that did not happen as described as at least
> I was not asked for input/comment/sign-off and I ahm
> well within that top 200 or so list.

I'm not sure precisely which metrics Greg used when he created his
list, but using "git log --since="July 2017" v4.18" and piping it into
the perl script I use to count Signed-off-by, Acked-by, and
Reviewed-by, lines, you're about #240; so you're in the top 250, but
not the top 200.

There are other metrics that could be used as well, such using the
number of lines added/removed to create the ranked list.  Different
metrics will have differing amounts of bias for or against people who
generate large number of "rename variables to random new types" or
"whitespace cleanups" commits.

To be honest, that's one of the weaknesses of only using git
statistics.  They have the advantage that they are objective; however,
especially if the exact metric which is used is revealed, such systems
can also be easily gamed.  (e.g., do you create a single commit that
fixes all of the white space in one subsystem or use a separate commit
for each file?)

And of course, using commit statistics may not accurately measure the
value of say, a set of patches which add support for a new
architecture or fixes a tricky locking problem, versus commits which
only fix checkpatch complaints.  So I will be the first to admit that
using git statistics has its limitations.

Regards,

					- Ted
