Return-Path: <sudipm.mukherjee@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3DEA7C87
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 17:13:42 +0000 (UTC)
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EFD93102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 17:13:41 +0000 (UTC)
Received: by pacti10 with SMTP id ti10so94213024pac.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Aug 2015 10:13:41 -0700 (PDT)
Date: Wed, 26 Aug 2015 22:43:31 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Jason Cooper <jason@lakedaemon.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20150826171331.GA1815@fool>
References: <20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com> <55B82222.3010409@samsung.com>
	<20150729074011.GB12557@amd> <55DCBB21.8070009@sonymobile.com>
	<55DD14C3.8090707@samsung.com>
	<20150826125630.GH3684@io.lakedaemon.net>
	<20150826135835.GA13900@sudip-pc>
	<20150826145129.GI3684@io.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150826145129.GI3684@io.lakedaemon.net>
Cc: "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	=?iso-8859-1?Q?Andersson=2C_Bj=F6rn?= <Bjorn.Andersson@sonymobile.com>,
	John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 26, 2015 at 02:51:29PM +0000, Jason Cooper wrote:
> Hi Sudip,
> 
> On Wed, Aug 26, 2015 at 07:28:35PM +0530, Sudip Mukherjee wrote:
> > On Wed, Aug 26, 2015 at 12:56:30PM +0000, Jason Cooper wrote:
> > > On Wed, Aug 26, 2015 at 10:22:11AM +0900, Krzysztof Kozlowski wrote:
> > > > Mali GPU drivers are an interesting case:
> > > ...
> > > > 4. Their coding style is so different that I can't imagine mainlining
> > > > them into staging area... Recently I was digging into Mali400 and it was
> > > > literally hurting my eyes to see that coding style. It's like opposite
> > > > of kernel.
> > > 
> > > iirc, gregkh's requirement for staging/ is that it compile.  Nothing
> > > more.
> > 
> > Yes. But Greg will also say that we should be modifying the code with
> > the ultimate goal of moving it out of staging into the main part of the
> > kernel. And if all of us know that it can not be merged into the main part
> > because of closed userspace then will Greg accept it?
> 
> Well, this seems to me to be a case of chicken-and-the-egg, which came
> first?  fwiw, I think there's benefit in putting the driver in staging/
> to see if it ignites development efforts on the userspace side.  If it
> doesn't, I know Greg isn't shy about removing drivers from staging.  ;-)
Adding Greg in the To: list for his comments.

Hi Greg,
Incase you have not seen the previous mails in the thread, we were
discussing if mali driver code can be added to staging. Many benefits,
but the problem is that the userspace is closed and unless we have an
open userspace this cannot be merged with the main part of the kernel.

regards
sudip
