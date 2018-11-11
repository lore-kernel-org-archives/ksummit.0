Return-Path: <tytso@thunk.org>
Date: Sun, 11 Nov 2018 00:57:28 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Frank Rowand <frowand.list@gmail.com>
Message-ID: <20181111055728.GC12818@thunk.org>
References: <1541721842.3774.2.camel@HansenPartnership.com>
	<35402D8E-0294-4E34-BE8B-22BCBC20BF66@fb.com>
	<c6a1629f-df14-6e02-c995-f99a1f691c6a@gmail.com>
	<0F1E6845-9F6D-46E2-BB52-8B0C2D8103C6@fb.com>
	<3b861369-0fc0-c746-4b1b-047ce903cc30@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3b861369-0fc0-c746-4b1b-047ce903cc30@gmail.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Tech Board Discuss <Tech-board-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] [Tech-board-discuss]  TAB non-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Nov 10, 2018 at 07:18:00PM -0800, Frank Rowand wrote:
> OK.  So the update was done in an opaque closed fashion, which involved
> soliciting input from some unknown fraction of the community.  Do I
> understand that correctly?
> 
> And I think it would be fair to say that the people who created the
> update were probably aware of the comments of a much larger group of
> people who had participated in the threads on various email lists,
> and also I suspect the comments threads on the related lwn articles.
> So likely also based on input from a (probably) larger fraction of
> the community who had been willing to publicly comment.
> 
> So based on community input, but the document was not reviewed by the
> broader community, or accepted by the broader community.

"Community" is a very slippery term.  I will note that there were
*many* people who were participating on the threads, sometimes in very
non-constructive or in a downright toxic fashion, who had zero commits
in recent years.  In some cases, it was zero commits, *ever*.  I
recall doing the research on one prolific author and found that while
he did contribute the kernel, it was 3 or 4 commits... ~5 years
ago... to a driver.

And then there was one person who admitted that while he was just a
user, he insisted he had a right to weigh in the issue.  They
certainly have the right to have that belief, of course.  Whether or
not maintainers are obliged to cater to people with those beliefs is a
very different question, however.

There seems to be an assumption that a open, public discussion will
always give you the best review.  I don't think that's necessarily
true.  It can often give you a very biased sample from the poeple who
are most stridently on one side of the debate or the other, as well as
being biased towards those who believe in the "last post wins" style
of debate, since they end up speaking most loudly and posting most
frequently and most aggressively.

I found it very interesting that by explicitly asking the top ranked
developers by git statistics for comments and for their sign-off on
the various update patches, we got a much broader read on what people
thought, and received some very thoughtful comments --- from people
who had *not* engaged on the public threads.

At this point, Linus has indicated that he would prefer that we not
try to tweak the CoC any further, and let's see how it works out in
practice.  If new developers continue to report that they feel more
welcome, and we get more news reports like this:

https://www.zdnet.com/article/a-kinder-gentler-linus-torvalds-and-linux-4-20/

... and no one is getting kicked out of Linux development for being
politically incorrect, and the quality and quantity of kernel code
continues to increase, it'll all be good and we can spend most of our
time worrying about technical rather than political issues.

     	      	    	      	     	  - Ted
