Return-Path: <gregkh@linuxfoundation.org>
Date: Thu, 13 Sep 2018 11:50:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Tiejun Chen <tiejunc@vmware.com>
Message-ID: <20180913095051.GC634@kroah.com>
References: <BY1PR0501MB14623C8F42765E4852FD5A39C51B0@BY1PR0501MB1462.namprd05.prod.outlook.com>
	<CACRpkdb8c51RABEVhn5tibVxiqTDBRXJ5A5wU5nDfubr6p3nMw@mail.gmail.com>
	<20180912162923.GA25894@wrath>
	<BY1PR0501MB1462CF95EB4423BD59F5D3EBC51A0@BY1PR0501MB1462.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BY1PR0501MB1462CF95EB4423BD59F5D3EBC51A0@BY1PR0501MB1462.namprd05.prod.outlook.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] A Safety-critical Linux system
 architecture
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 13, 2018 at 03:13:11AM +0000, Tiejun Chen wrote:
> On the other hand, even without something as you said, "understand a
> set of use cases, determine safety requirements, and then complete the
> methods and procedures". Yes, I tend to agree that we need to make
> these stuff clear very well, but this doesn't mean we shouldn't talk
> about Linux itself now. Because we already have fundamental issues
> right there like, 
> 1. Real time issue: we need to get Linux being RTOS to meet
> safety-critical requirements.  

So listing what is "lacking" from the existing -rt patchset would be
great, I'm sure those developers would want to know this.

Combined with some resources to help get the remaining -rt patches
merged upstream would also be great.

> 2. Partitioning {software, hardware}resources: we need to have strong
> barrier to providing such an evidence that one program can't interact
> with another in any ways including shared memory, interrupts, etc.

What is preventing you from adding this to Linux now?

> 3. How to "remove" or disable any unnecessary or unused codes in
> safety-critical environment.

If unused code is unused, why is it an issue?

And how do you describe "unnecessary"?  Who determines this?

> 4. documentations to safety and security in Linux.

What type of documentation is lacking?

These are all very generic questions/topics, why not propose a talk for
the KS track at Plumbers for it?  Or many talks as these really are a
lot of different, individual things.

thanks,

greg k-h
