Return-Path: <gregkh@linuxfoundation.org>
Date: Tue, 6 Sep 2016 21:44:04 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20160906194404.GA22363@kroah.com>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon> <20160906003532.GA3950@sirena.org.uk>
	<1473175831.17204.29.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1473175831.17204.29.camel@HansenPartnership.com>
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Tue, Sep 06, 2016 at 11:30:31AM -0400, James Bottomley wrote:
>    3. Increase the pain.  Not sure I like this, but in theory, we could
>       churn the upstream API to increase the pain of upports, but it would
>       also cause a lot of issues with backports.

I tried doing this in the past.  It did cause pain for out-of-tree
modules, but then they got really good and abstracted things away so
that it made their future kernel porting efforts even easier than
before, making their need to upstream code even less.  And then when
they did want to upstream stuff, it took more work unwinding the
abstraction layer.

So watch out for unintended consequences here :)

thanks,

greg k-h
