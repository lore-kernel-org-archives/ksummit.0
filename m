Return-Path: <James.Bottomley@HansenPartnership.com>
Message-ID: <1474038939.2353.13.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg KH <gregkh@linuxfoundation.org>, Paolo Valente
	<paolo.valente@linaro.org>
Date: Fri, 16 Sep 2016 08:15:39 -0700
In-Reply-To: <20160916082415.GA15313@kroah.com>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Fri, 2016-09-16 at 10:24 +0200, Greg KH wrote:
> On Fri, Sep 16, 2016 at 09:55:45AM +0200, Paolo Valente wrote:
> > Linux systems suffers from long-standing high-latency problems, at
> > system and application level, related to I/O.  For example, they
> > usually suffer from poor responsiveness--or even starvation, 
> > depending on the workload--while, e.g., one or more files are being
> > read/written/copied.  On a similar note, background workloads may
> > cause audio/video playback/streaming to stutter, even with long 
> > gaps. A lot of test results on this problem can be found here [1] 
> > (I'm citing only this resource just because I'm familiar with it, 
> > but evidence can be found in countless technical reports, 
> > scientific papers, forum discussions, and so on).
> 
> <snip>
> 
> Isn't this a better topic for the Vault conference, or the storage 
> mini conference?

LSF/MM would be the place to have the technical discussion, yes.  It
will be in Cambridge (MA,USA not the real one) in the Feb/March time
frame in 2017.  Far more of the storage experts (who likely want to
weigh in) will be present.

My understanding of the patch set is that you've only sent it as an RFC
and the main criticism was that it only applied to our legacy
interface, not the new mq one.  You sent out an RFD for ideas around mq
in August, but the main criticism was that your ideas would introduce a
contention point.  Omar Sandoval is also working on something similar
in mq, are you actually talking to him?

James
