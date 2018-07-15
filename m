Return-Path: <gregkh@linuxfoundation.org>
Date: Sun, 15 Jul 2018 10:54:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20180715085403.GA21992@kroah.com>
References: <20180501163818.GD1468@sasha-vm> <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501220228.GD7397@sasha-vm> <20180502043017.GA11938@1wt.eu>
	<20180502194139.GA18390@sasha-vm> <20180502200229.GA12729@1wt.eu>
	<20180714173812.xhfwtcijlxebmn2k@devuan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180714173812.xhfwtcijlxebmn2k@devuan>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Willy Tarreau <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jul 14, 2018 at 07:38:12PM +0200, Pavel Machek wrote:
> Hi!
> 
> > > The way I see it, if a commit can get one or two tested-by, it's a good
> > > alternative to a week in -next.
> > 

Pavel, I "love" how you fail to point out that you are responding to a 2
month old thread :(

And that thread was beaten to death, and still you want to revise it,
which is odd to me, perhaps you just don't like stable releases?  Given
that you never mark any of the patches for your subsystem for stable
releases, why do you care about how they are maintained?

> > Agreed. Even their own actually. And I'm not kidding. Those who run large
> > amounts of tests on certain patches could really mention is in tested-by,
> > as opposed to the most common cases where the code was just regularly
> > tested.
> 
> Actually, it would be cool to get "Tested: no" and "Tested: compile"
> tags in the commit mesages. Sometimes it is clear from the context
> that patch was not tested (treewide update of time to 64bit), but
> sometime it is not.
> 
> This is especially problem for -stable, as it seems that lately
> patches are backported from new version without any testing.

As everyone has pointed out numerous times in this thread, there are
more testing of stable patches and releases than _EVER_ before in the
history of stable kernels.  And if you feel there are ways to do more
testing that we somehow are missing, wonderful, please provide
constructive criticism.  If not, and you just want to complain, well, my
killfile can always use a new member...

And as always, you have a choice:
	- if you don't like stable kernels, don't run them.

greg k-h
