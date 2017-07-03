Return-Path: <jkosina@suse.cz>
Date: Mon, 3 Jul 2017 22:41:16 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Darren Hart <dvhart@infradead.org>
In-Reply-To: <20170630162155.GB26257@fury>
Message-ID: <alpine.LSU.2.20.1707032238300.15036@cbobk.fhfr.pm>
References: <20170625072423.GR1248@mtr-leonro.local>
	<CA+55aFx9A=5cc0QZ7CySC4F2K7eYaEfzkdYEc9JaNgCcV25=rg@mail.gmail.com>
	<20170630162155.GB26257@fury>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Driver and/or module
 versions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 30 Jun 2017, Darren Hart wrote:

> New features also fall into the independent tracking bucket, although 
> your point about feature masks could reduce that need. Is there a 
> definitive mechanism for the feature mask approach? I see a lot of 
> sysfs_filename:value key:value pairs for this kind of thing.

Adding those sysfs attributes seems like exactly the thing that people 
will keep forgetting to do, as there is no (real) functionality depending 
on them.

I doubt there is any better 'description' of the 'state' of the driver 
than SHA of the topmost commit + the tree it's related to.

-- 
Jiri Kosina
SUSE Labs
