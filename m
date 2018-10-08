Return-Path: <SRS0=uRq0=MU=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B2F456C80
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:01:33 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B9E946FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 14:01:32 +0000 (UTC)
Date: Mon, 8 Oct 2018 15:47:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Boaz Harrosh <boaz@plexistor.com>
Message-ID: <20181008134702.GA28057@kroah.com>
References: <MWHPR06MB2896E4C6CE916007BCB66305EEE90@MWHPR06MB2896.namprd06.prod.outlook.com>
	<20181003110644.GA12451@kroah.com>
	<MWHPR06MB28965FBD1C86181DD7986C9FEEE90@MWHPR06MB2896.namprd06.prod.outlook.com>
	<555ef011-7084-affc-6e77-0d70c9eba5b4@plexistor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <555ef011-7084-affc-6e77-0d70c9eba5b4@plexistor.com>
Cc: ksummit-discuss <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ZUFS - Zero Copy User-Mode
 FileSystem - One year Later
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 08, 2018 at 10:46:00AM +0300, Boaz Harrosh wrote:
> On 03/10/18 15:46, Harrosh, Boaz wrote:
> > Greg KH <gregkh@linuxfoundation.org> Wrote:
> > 
> >>> On Wed, Oct 03, 2018 at 09:35:54AM +0000, Harrosh, Boaz wrote:
> >>> Linux Plumbers 2018: ZUFS - Zero Copy User-Mode FileSystem - One year Later
> > <snap>
> > 
> >> Why wouldn't this be better discussed at the file-system-specific
> >> conference?  Or have you already done that this year?
> >>
> >> thanks,
> >> greg k-h
> > 
> > Yes I have presented at LSF. It was a full discussion. And, 6 month ago, was
> > very not ready for upstream at that time.
> > 
> > Last plumbers my talk raised a lot of interest, was then at the POC stage.
> > 
> > I would like to present the current status, when code is much more complete
> > and actually ready for clients computers in stability and fixture set.
> > 
> > And try to draw in more community interest and participation. In what I believe
> > is a very Interesting project. Some of the Technics I present are beyond pure FS
> > and demonstrate a new way to communicate with user-mode servers, taking into
> > account cpu-locality and NUMA awareness.
> > 
> > [That said it is all about me sleeping on guard and submitting a plumbers talk proposal
> >  to late. So it was suggested I might ask about a Kernel track
> > ]
> > 
> 
> Hello Greg, ksummit comity
> 
> Does any one please know when are the list of the Kernel sub-tracks [TECH TOPIC]s
> are set and accepted? I read the "Kernel Summit 2018 planning kick-off" mail
> and it was not clear to me.

I do not know when that will be finalized, sorry.

greg k-h
