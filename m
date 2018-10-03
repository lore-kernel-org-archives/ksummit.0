Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 3 Oct 2018 04:06:44 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: "Harrosh, Boaz" <Boaz.Harrosh@netapp.com>
Message-ID: <20181003110644.GA12451@kroah.com>
References: <MWHPR06MB2896E4C6CE916007BCB66305EEE90@MWHPR06MB2896.namprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MWHPR06MB2896E4C6CE916007BCB66305EEE90@MWHPR06MB2896.namprd06.prod.outlook.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Wed, Oct 03, 2018 at 09:35:54AM +0000, Harrosh, Boaz wrote:
> Linux Plumbers 2018: ZUFS - Zero Copy User-Mode FileSystem - One year Later
> 
> One year after its inception there are real hardened FSs. Real performance measurements.
> and many innovative fixtures. But is it ready for upstream?
> 
> Few highlights:
> 
> - ALL VFS api working including dax, mmap IOCTL xattrs ACLs ....
>   (Missing quota)
> - IO API changed (From last year)
> - Support for ASYNC operations
> - Support for both pmem and regular block devices
> - Support for private memory pools
> - ZTs multy-channel and dynamic channel allocation
> - And many more ...
> 
> In the talk I will give a short architectural and functional overview.
> Then will go over some of the leftover challenges.
> 
> And finally hope to engage in an open discussion of how this project should move forward
> to be accepted into the Kernel, gain more users and FS implementations.

Why wouldn't this be better discussed at the file-system-specific
conference?  Or have you already done that this year?

thanks,

greg k-h
