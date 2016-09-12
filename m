Return-Path: <BATV+8cf5611d0bb025e1f59d+4768+infradead.org+hch@bombadil.srs.infradead.org>
Date: Mon, 12 Sep 2016 08:34:18 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20160912153418.GA2761@infradead.org>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<20160906162502.GA15434@roeck-us.net>
	<20160907083312.GO28922@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160907083312.GO28922@quack2.suse.cz>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 07, 2016 at 10:33:12AM +0200, Jan Kara wrote:
> Just to give a comparable numbers for SUSE. The coming SLE12 SP2 release is
> based on 4.4 as well. On top of 4.4.19 we currently carry some 4700 patches
> which together add/delete some 390k lines. Out of these some 280 patches
> are not backports of upstream patches (or at least in the process of going
> upstream), adding / deleting some 35k lines. So indeed we do have much less
> non-upstream stuff in the distro kernel. OTOH I'd note we still do have a
> considerable amount of backported stuff in the product that haven't even
> shipped yet...

And a not insignificant part of that has been carried around by SuSE
for years.  Often not submitted upstream or only half-heartedly, and
sometimes even rejected.  Leading to fun like ioctl numbers added in
SuSE and reused differently in mainline.
