Return-Path: <glikely@secretlab.ca>
MIME-Version: 1.0
Sender: glikely@secretlab.ca
In-Reply-To: <1474054593.2353.76.camel@HansenPartnership.com>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<20160916082415.GA15313@kroah.com>
	<1474038939.2353.13.camel@HansenPartnership.com>
	<C3B93237-1E57-4F06-9681-B875557FC34F@linaro.org>
	<1474054593.2353.76.camel@HansenPartnership.com>
From: Grant Likely <grant.likely@secretlab.ca>
Date: Wed, 21 Sep 2016 14:51:21 +0100
Message-ID: <CACxGe6t1JpdTxB88G75Y0wZkFHEr2tnG7DvYGvGk3gnm6oLpng@mail.gmail.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset=UTF-8
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	"ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, Jens Axboe <axboe@fb.com>,
	Hannes Reinecke <hare@suse.de>, Tejun Heo <tj@kernel.org>,
	osandov@osandov.com, Christoph Hellwig <hch@lst.de>
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

On Fri, Sep 16, 2016 at 8:36 PM, James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
> On Fri, 2016-09-16 at 20:48 +0200, Paolo Valente wrote:
>> > Il giorno 16 set 2016, alle ore 17:15, James Bottomley <
>> > James.Bottomley@HansenPartnership.com> ha scritto:
>> >
>> > On Fri, 2016-09-16 at 10:24 +0200, Greg KH wrote:
>> > > On Fri, Sep 16, 2016 at 09:55:45AM +0200, Paolo Valente wrote:
>> > > > Linux systems suffers from long-standing high-latency problems,
>> > > > at system and application level, related to I/O.  For example,
>> > > > they usually suffer from poor responsiveness--or even
>> > > > starvation, depending on the workload--while, e.g., one or more
>> > > > files are being read/written/copied.  On a similar note,
>> > > > background workloads may cause audio/video playback/streaming
>> > > > to stutter, even with long gaps. A lot of test results on this
>> > > > problem can be found here [1] (I'm citing only this resource
>> > > > just because I'm familiar with it, but evidence can be found in
>> > > > countless technical reports, scientific papers, forum
>> > > > discussions, and so on).
>> > >
>> > > <snip>
>> > >
>> > > Isn't this a better topic for the Vault conference, or the
>> > > storage mini conference?
>> >
>> > LSF/MM would be the place to have the technical discussion, yes.
>> >  It will be in Cambridge (MA,USA not the real one) in the Feb/March
>> > time frame in 2017.  Far more of the storage experts (who likely
>> > want to weigh in) will be present.
>> >
>>
>> Perfect venue.  Just it would be a pity IMO to waste the opportunity
>> of my being at KS with other people working on the components
>> involved in high-latency issues, and to delay by more months a
>> discussion on possible solutions.
>
> OK, so the problem with a formal discussion of something like this at
> KS is that of the 80 or so people in the room, likely only 10 have any
> interest whatsoever, leading to intense boredom for the remaining 70.
>  And for those 10, there were likely another 10 who didn't get invited
> who wanted the chance to express an opinion.  Realistically, this is
> why we no-longer do technical discussions at KS: audience too broad and
> not enough specific subject matter experts.
>
> However, nothing says you can't have a discussion in the hallway if
> you're already going.

Maybe we can set aside a slot or too for smaller scale BoF sessions?
If there are other topics in this vein, it would be good to have a
list of them ahead of time. I've been considering a BoF related to our
device model for example.

g.
