Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 5 Sep 2018 15:05:12 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20180905130512.GA5601@kroah.com>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<nycvar.YFH.7.76.1809051437300.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1809051437300.15880@cbobk.fhfr.pm>
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 05, 2018 at 02:53:34PM +0200, Jiri Kosina wrote:
> Just randomly scrolling through those, I am wondering how at least
> 
> 	7797167ffde1f00446301cb22b37b7c03194cfaf
> 	3b885ac1dc35b87a39ee176a6c7e2af9c789d8b8
> 
> made it past any stable tree acceptance criteria.
> 
> They are memory ordering changes (so exactly area which is generally 
> fragile by itself and the risk of regressions simply can't be completely 
> ignored), yet they fix absolutely no functional issue.
> 
> In addition to that, they all exist upstream only for one single -rc, so 
> the public testing exposure is also currently minimal.
> 
> Yeah, I know I know, those are parisc, so noone cares anyway :P but that's 
> really just the first randomly chosen kernel, with a small number of 
> patches, and still 10% of them are something we'd not want to put into an 
> enterprise distro kernel without a lot of justification and regression 
> testing.

For these specific ones, I trusted that the maintainer of the subsystem
knew what they were doing when they marked them for the stable tree.

Which is what we do in kernel development, we trust others that their
stewardship of their code subsystems is in the best interest of their
users.  To not do so, would be to force me to know much more about _ALL_
parts of the kernel, and that will just not happen to anyone.

And yes, you can probably always find one-off patches that you might not
feel comfortable with, but as they are in Linus's tree, you better feel
comfortable with them when you update to the next major version :)

There's a cool script floating around somewhere that shows you, when you
merge in a stable kernel release into your tree, exactly which files and
commits actually affect you based on your configuration for that
specific kernel tree.  It's used in some Android devices and it lets
people feel much more comfortable about taking stable release updates
because they realize two major things:

	- stuff like parisc changes has no affect on them at all so they
	  get comfortable with "large numbers" of patches in stable
	  releases.
	- they get bugfixes for their platform that they didn't realize
	  they needed just yet.

Maybe you should start using it for your kernels so that parisc patches
don't bother you :)

thanks,

greg k-h
