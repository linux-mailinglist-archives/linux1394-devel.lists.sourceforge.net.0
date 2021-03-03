Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CF832B45F
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Mar 2021 06:23:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lHJya-0005GL-Jl; Wed, 03 Mar 2021 05:23:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1lHJyZ-0005GC-10
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Mar 2021 05:23:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6sJkNvGHrVmMtI/AqoNEU4T1AjvVLS5rr4NaMFJNQx0=; b=dQcUueLBfD+Bap+HG8ZazqwM+M
 VDR43Zs9704oaicl0kQ+jkiB1KllPd0NENx3DRXuhFuJRhkftUDiMP67KRy6nbgfldtD+Cf37CIf/
 h5OMLJiVL7HQU0wyzXCSfETbyQnTwMrbi8eylHF4qh6bTihz+FIr0hTxkLatzbqx2Qlk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6sJkNvGHrVmMtI/AqoNEU4T1AjvVLS5rr4NaMFJNQx0=; b=DNgcKly4fZM+TQ86mUd4IovKTk
 UV7eLq4u15b9Imk8srsMP4+BcdvK7ewSYMJTkHkB7g4TyiOoxkSJI1py7iKQhLlWqgwm9RCsQqB59
 dRLYiDrJGb1O6Hj18O+UacUBB5wuudilSw6VE2RUXkgQouHlxur7G3a2VcOnwWaZpwxw=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lHJyM-0005bK-0U
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Mar 2021 05:23:10 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1235L2ke112284;
 Wed, 3 Mar 2021 05:22:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=6sJkNvGHrVmMtI/AqoNEU4T1AjvVLS5rr4NaMFJNQx0=;
 b=Ys8UiwK9LsCq+zVpWUiV33OpRLsjVP3Ys53b7o9lE/6Tz+tGKzaODeXPqcVBf3Tu68wq
 z/ZEhl8/+beHoJcbR966tIkMtgHNCD08Qfyt8estb9xs7XUIKpIfnwwHb1FmrDxQKH1u
 T3Y13le4oNwE0WlsM+LFiQi5DBTpANSUVnVOcaBIUS1e2oDb/KwoCP+vqhasLg2p+tFL
 PWjYj+BcLI6+ECEAZ9lwTo8OwTcafiIDvHJhjlOBqOtIZzGxGZui6DMxns5RVpa+2b75
 Kmmr4gR1RxJcp9tu0WdPOxM9r8qlk320Ki4b1fBcz558ka5/dI4JTggRB8mTTFlOxRYs /w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 36ye1ma0wc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Mar 2021 05:22:51 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1235L3L0118668;
 Wed, 3 Mar 2021 05:22:48 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 370000tn26-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Mar 2021 05:22:48 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 1235Ml3B023460;
 Wed, 3 Mar 2021 05:22:47 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Mar 2021 21:22:46 -0800
Date: Wed, 3 Mar 2021 08:22:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Subject: Re: [PATCH] firewire: prevent integer overflow on 32bit systems
Message-ID: <20210303052239.GY2222@kadam>
References: <YD4e9XOD8JPlJzxW@mwanda>
 <20210302221911.6c1582e2@kant>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210302221911.6c1582e2@kant>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9911
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=999
 phishscore=0 bulkscore=0 mlxscore=0 spamscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103030039
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9911
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 priorityscore=1501
 mlxlogscore=999 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0
 mlxscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103030039
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lHJyM-0005bK-0U
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux1394-devel@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Tue, Mar 02, 2021 at 10:19:11PM +0100, Stefan Richter wrote:
> On Mar 02 Dan Carpenter wrote:
> > In TCODE_STREAM_DATA mode, on 32bit systems, the "sizeof(*e) +
> > request->length" operation can overflow leading to memory corruption.
> > 
> > Fixes: 18e9b10fcdc0 ("firewire: cdev: add closure to async stream ioctl")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/firewire/core-cdev.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
> > index fb6c651214f3..314de0384035 100644
> > --- a/drivers/firewire/core-cdev.c
> > +++ b/drivers/firewire/core-cdev.c
> > @@ -587,6 +587,9 @@ static int init_request(struct client *client,
> >  	    request->length < 4)
> >  		return -EINVAL;
> >  
> > +	if (request->length > ULONG_MAX - sizeof(*e))
> > +		return -EINVAL;
> > +
> >  	e = kmalloc(sizeof(*e) + request->length, GFP_KERNEL);
> >  	if (e == NULL)
> >  		return -ENOMEM;
> 
> There is already a length check for asynchronous stream requests.
> It happens in ioctl_send_stream_packet().

Oh, yeah.  You're right.  I should have looked more carefully.  Sorry.

regards,
dan carpenter



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
