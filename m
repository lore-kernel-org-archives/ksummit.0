Return-Path: <jikos@kernel.org>
Date: Wed, 7 Sep 2016 10:41:08 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Jan Kara <jack@suse.cz>
In-Reply-To: <20160907083312.GO28922@quack2.suse.cz>
Message-ID: <alpine.LNX.2.00.1609071038080.22028@cbobk.fhfr.pm>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<20160906162502.GA15434@roeck-us.net>
	<20160907083312.GO28922@quack2.suse.cz>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Wed, 7 Sep 2016, Jan Kara wrote:

> > We are trying to upstream as much as we can, but it will take a while.
> > Given time constraints, I don't think "upstream first" will ever work.
> > Products have to ship and simply can not wait for upstream patches to be
> > accepted.
> 
> Well, it works reasonably for us... Actually most of the backports are HW
> support so server HW vendors seem to be better in getting their drivers
> upstream before actually shipping the HW. But I understand this is easier
> for servers as that is a more mature / slower market than phones / tablets.

Yeah, unfortunately there really is a difference between server space and 
consumer space in this area. Consumer space folks seem to be in a 
situation that server space people have been in 2.0 / 2.2 era, where we 
had exactly the same problem with server hardware (i.e lack of timely 
focus on upstream in the process).

Also, it feels like consumer HW is more in a "fire and forget" mode of 
operation, while server hardware usually sticks around for a rather long 
time.

-- 
Jiri Kosina
SUSE Labs
