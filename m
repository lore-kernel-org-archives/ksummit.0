Return-Path: <glikely@secretlab.ca>
MIME-Version: 1.0
Sender: glikely@secretlab.ca
In-Reply-To: <1408466581.29765.124.camel@shinybook.infradead.org>
References: <20140819144839.GA1270@thunk.org>
	<20140819145547.GB18536@roeck-us.net>
	<20140819152350.GE11085@thunk.org> <20140819154029.GE5423@mwanda>
	<20140819154738.GB16948@roeck-us.net>
	<1408466581.29765.124.camel@shinybook.infradead.org>
From: Grant Likely <grant.likely@secretlab.ca>
Date: Tue, 19 Aug 2014 12:13:40 -0500
Message-ID: <CACxGe6tsFM13t5VTYb9GaD4iEz_Bb6GtfXJP0nS-ocziPSbLHg@mail.gmail.com>
To: David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset=ISO-8859-1
Cc: ksummit-discuss@lists.linux-foundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] No more module removal -- Unconference track
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 19, 2014 at 11:43 AM, David Woodhouse <dwmw2@infradead.org> wrote:
> On Tue, 2014-08-19 at 08:47 -0700, Guenter Roeck wrote:
>>
>> If you want to taint the kernel on module removal because it is known that many
>> drivers have bugs in their removal code,
>
> Most drivers don't have "removal code" per se. They have "unbind" code.
> Which you can still exercise without actually unloading the driver.

Many platform, i2c, spi drivers have moved to macro generated module
removal code that does nothing but unregister the struct
device_driver.

g.
