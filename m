Return-Path: <linux+ksummit-discuss=lists.linuxfoundation.org@arm.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 63FB47AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 19:50:08 +0000 (UTC)
Received: from pandora.arm.linux.org.uk (pandora.arm.linux.org.uk
	[78.32.30.218])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 79720206
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 19:50:04 +0000 (UTC)
Date: Tue, 4 Aug 2015 20:49:45 +0100
From: Russell King - ARM Linux <linux@arm.linux.org.uk>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20150804194945.GS7557@n2100.arm.linux.org.uk>
References: <2111196.TG1k3f53YQ@avalon>
	<alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org> <1624703.qdGzscHWSc@avalon>
	<alpine.DEB.2.02.1508011319140.2071@localhost6.localdomain6>
	<20150804125556.GA5180@mwanda>
	<CAKdAkRTcHXjb+R=AkmzxRgn14FkPEi2B3ePAK2W4_yQnrrNnxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKdAkRTcHXjb+R=AkmzxRgn14FkPEi2B3ePAK2W4_yQnrrNnxQ@mail.gmail.com>
Sender: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: Shuah Khan <shuah.kh@samsung.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Christoph Hellwig <hch@infradead.org>, Tejun Heo <tj@kernel.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 04, 2015 at 10:55:35AM -0700, Dmitry Torokhov wrote:
> I wonder if it would be possible to note that the current thread is going
> through probe() or remove() code path in driver core and scream if we
> encounter devm* call outside of such path. That will give false positives
> in cases when there is a legitimate mix of automatic and manual resource
> management (i.e. you rely on automatic cleanup in probe()/remove() but need
> to free/reallocate object somewhere else), but we can create another call
> for that.

Well, it's not that easy, now that we have the component helper (sorry).

The "easy" bit to implement that idea would be to add a flag to struct
device which indicates whether this device is in an active probe()
function, and use that in the devm* functions to determine whether
to warn about incorrect usage.

However, the component helper messes that up slightly, because it allows
devm usage outside of a device's probe() function, though still in a
properly controlled manner.  (Resources claimed via devm_* in the bind()
call will be released in after the corresponding unbind() call.)  This
is done using the devres groups.

So, maybe instead of "is it inside a probe" a better check should be "is
the devm* resource claim being done in an active devres group or inside
a probe".  Not forgetting that a devres group can be removed, merging
the child resource group with the parent resource group (which are
probably about the same as for resource claiming using devm_*.)

-- 
FTTC broadband for 0.8mile line: currently at 10.5Mbps down 400kbps up
according to speedtest.net.
