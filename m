Return-Path: <heiko@sntech.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6AA31D47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Aug 2015 08:42:13 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [95.129.55.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D80D4EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Aug 2015 08:42:12 +0000 (UTC)
From: Heiko Stuebner <heiko@sntech.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 28 Aug 2015 10:42:01 +0200
Message-ID: <13856479.FgcuqPdAQt@phil>
In-Reply-To: <20150828074439.GA26501@amd>
References: <55B7FD82.8010806@sonymobile.com>
	<20150826200911.GA7269@kroah.com> <20150828074439.GA26501@amd>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Jason Cooper <jason@lakedaemon.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Pavel Machek <pavel@ucw.cz>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>,
	=?ISO-8859-1?Q?Andersson=2C_Bj=F6rn?= <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Am Freitag, 28. August 2015, 09:44:39 schrieb Pavel Machek:
> Hi!
> 
> On Wed 2015-08-26 15:09:11, Greg Kroah-Hartman wrote:
> > On Wed, Aug 26, 2015 at 10:43:31PM +0530, Sudip Mukherjee wrote:
> > > On Wed, Aug 26, 2015 at 02:51:29PM +0000, Jason Cooper wrote:
> > > > Hi Sudip,
> > > > 
> > > > On Wed, Aug 26, 2015 at 07:28:35PM +0530, Sudip Mukherjee wrote:
> > > > > On Wed, Aug 26, 2015 at 12:56:30PM +0000, Jason Cooper wrote:
> > > > > > On Wed, Aug 26, 2015 at 10:22:11AM +0900, Krzysztof Kozlowski 
wrote:
> > > > > > > Mali GPU drivers are an interesting case:
> > > > > > ...
> > > > > > 
> > > > > > > 4. Their coding style is so different that I can't imagine
> > > > > > > mainlining
> > > > > > > them into staging area... Recently I was digging into Mali400
> > > > > > > and it was
> > > > > > > literally hurting my eyes to see that coding style. It's like
> > > > > > > opposite
> > > > > > > of kernel.
> > > > > > 
> > > > > > iirc, gregkh's requirement for staging/ is that it compile. 
> > > > > > Nothing
> > > > > > more.
> > > > > 
> > > > > Yes. But Greg will also say that we should be modifying the code
> > > > > with
> > > > > the ultimate goal of moving it out of staging into the main part of
> > > > > the
> > > > > kernel. And if all of us know that it can not be merged into the
> > > > > main part
> > > > > because of closed userspace then will Greg accept it?
> > > > 
> > > > Well, this seems to me to be a case of chicken-and-the-egg, which came
> > > > first?  fwiw, I think there's benefit in putting the driver in
> > > > staging/
> > > > to see if it ignites development efforts on the userspace side.  If it
> > > > doesn't, I know Greg isn't shy about removing drivers from staging. 
> > > > ;-)
> > > 
> > > Adding Greg in the To: list for his comments.
> > > 
> > > Hi Greg,
> > > Incase you have not seen the previous mails in the thread, we were
> > > discussing if mali driver code can be added to staging. Many benefits,
> > > but the problem is that the userspace is closed and unless we have an
> > > open userspace this cannot be merged with the main part of the kernel.
> > 
> > staging is not for dumping crap that the owners don't want to do the
> > work to get it merged "properly".  So I will not take DRM drivers in
> > staging that violate the existing DRM rules of requiring an open
> > userspace as that would mean I would be adding code that can never be
> > merged out of the staging tree.
> > 
> > sorry, go kick the Mali authors to do this correctly.  They know what
> > they have to do, their management just doesn't want to let them do
> 
> it.
> 
> Well, you still can get it working with http://limadriver.org/ ,

except the old public code has vanished with the gitorious shutdown (somebody 
having a copy should maybe upload it to github or somewhere, so it doesn't get 
lost completely?) and of course the rumored already existing mesa driver is 
still in hiding.


> then
> merge it to staging/ , then clean the horrible coding style in tree...
> 
> Best regards,
> 									Pavel
