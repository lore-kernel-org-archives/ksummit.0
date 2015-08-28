Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 188EDA1F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Aug 2015 07:44:43 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3CBAA10C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Aug 2015 07:44:42 +0000 (UTC)
Date: Fri, 28 Aug 2015 09:44:39 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20150828074439.GA26501@amd>
References: <55B7FD82.8010806@sonymobile.com> <55B82222.3010409@samsung.com>
	<20150729074011.GB12557@amd> <55DCBB21.8070009@sonymobile.com>
	<55DD14C3.8090707@samsung.com>
	<20150826125630.GH3684@io.lakedaemon.net>
	<20150826135835.GA13900@sudip-pc>
	<20150826145129.GI3684@io.lakedaemon.net>
	<20150826171331.GA1815@fool> <20150826200911.GA7269@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150826200911.GA7269@kroah.com>
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>,
	=?iso-8859-1?Q?Andersson=2C_Bj=F6rn?= <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi!
On Wed 2015-08-26 15:09:11, Greg Kroah-Hartman wrote:
> On Wed, Aug 26, 2015 at 10:43:31PM +0530, Sudip Mukherjee wrote:
> > On Wed, Aug 26, 2015 at 02:51:29PM +0000, Jason Cooper wrote:
> > > Hi Sudip,
> > > 
> > > On Wed, Aug 26, 2015 at 07:28:35PM +0530, Sudip Mukherjee wrote:
> > > > On Wed, Aug 26, 2015 at 12:56:30PM +0000, Jason Cooper wrote:
> > > > > On Wed, Aug 26, 2015 at 10:22:11AM +0900, Krzysztof Kozlowski wrote:
> > > > > > Mali GPU drivers are an interesting case:
> > > > > ...
> > > > > > 4. Their coding style is so different that I can't imagine mainlining
> > > > > > them into staging area... Recently I was digging into Mali400 and it was
> > > > > > literally hurting my eyes to see that coding style. It's like opposite
> > > > > > of kernel.
> > > > > 
> > > > > iirc, gregkh's requirement for staging/ is that it compile.  Nothing
> > > > > more.
> > > > 
> > > > Yes. But Greg will also say that we should be modifying the code with
> > > > the ultimate goal of moving it out of staging into the main part of the
> > > > kernel. And if all of us know that it can not be merged into the main part
> > > > because of closed userspace then will Greg accept it?
> > > 
> > > Well, this seems to me to be a case of chicken-and-the-egg, which came
> > > first?  fwiw, I think there's benefit in putting the driver in staging/
> > > to see if it ignites development efforts on the userspace side.  If it
> > > doesn't, I know Greg isn't shy about removing drivers from staging.  ;-)
> > Adding Greg in the To: list for his comments.
> > 
> > Hi Greg,
> > Incase you have not seen the previous mails in the thread, we were
> > discussing if mali driver code can be added to staging. Many benefits,
> > but the problem is that the userspace is closed and unless we have an
> > open userspace this cannot be merged with the main part of the kernel.
> 
> staging is not for dumping crap that the owners don't want to do the
> work to get it merged "properly".  So I will not take DRM drivers in
> staging that violate the existing DRM rules of requiring an open
> userspace as that would mean I would be adding code that can never be
> merged out of the staging tree.
> 
> sorry, go kick the Mali authors to do this correctly.  They know what
> they have to do, their management just doesn't want to let them do
it.

Well, you still can get it working with http://limadriver.org/ , then
merge it to staging/ , then clean the horrible coding style in tree...

Best regards,
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
