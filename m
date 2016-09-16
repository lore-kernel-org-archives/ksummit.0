Return-Path: <gregkh@linuxfoundation.org>
Date: Fri, 16 Sep 2016 10:24:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Paolo Valente <paolo.valente@linaro.org>
Message-ID: <20160916082415.GA15313@kroah.com>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
Cc: b.zolnierkie@samsung.com, ksummit-discuss@lists.linux-foundation.org,
	Jens Axboe <axboe@fb.com>, hare@suse.de,
	Tejun Heo <tj@kernel.org>, osandov@osandov.com, hch@lst.de
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing long-standing
 high-latency problems related to I/O
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 16, 2016 at 09:55:45AM +0200, Paolo Valente wrote:
> Linux systems suffers from long-standing high-latency problems, at
> system and application level, related to I/O.  For example, they
> usually suffer from poor responsiveness--or even starvation, depending
> on the workload--while, e.g., one or more files are being
> read/written/copied.  On a similar note, background workloads may
> cause audio/video playback/streaming to stutter, even with long gaps.
> A lot of test results on this problem can be found here [1] (I'm
> citing only this resource just because I'm familiar with it, but
> evidence can be found in countless technical reports, scientific
> papers, forum discussions, and so on).

<snip>

Isn't this a better topic for the Vault conference, or the storage mini
conference?

thanks,

greg k-h
