Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B0B1EC662
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Jun 2020 03:02:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jgHnQ-00071u-SO; Wed, 03 Jun 2020 01:02:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <martin.petersen@oracle.com>) id 1jgHnP-00071n-Jr
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Jun 2020 01:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:In-Reply-To:Date:
 References:Message-ID:From:Subject:Cc:To:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3/STZ1SexWREBvXya0wbTc4mMqOFMgMJt3fHBvJ6Xvk=; b=Lh8n37RBPrXe31YQN8Xn0Jum7
 EuF0dLK57x31cKUsapfiILFi+Vjss5PPXnjPcHyUzQrZNNf9JYXlegPdnVyA05ZnwQ6ZdjNEynjoi
 ZAiYv4JAeAPqTPHA6jgVkqsJ+4t4j3Ue+wq9ec2BQ1H0LP6yVcsTZrghSu0JLoNxY3B94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:In-Reply-To:Date:References:Message-ID:From:
 Subject:Cc:To:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3/STZ1SexWREBvXya0wbTc4mMqOFMgMJt3fHBvJ6Xvk=; b=YoWXV34ozHco6saxZC8LM8mJnz
 9Vta7ISGcTwE9nw3hoToLXTqf0nxUFaoXZ7k1Xc10C7KV52cFVZm6C8+u4LWOWrpJKc+ZRfTp13NM
 fbvzU9GvwuLuy8pryqSS6PKk6D//TAIy8R4O2swKSuwnZh/a2YHhlOVPSAuzoZ5i+lGc=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jgHnO-006xEr-7r
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Jun 2020 01:02:19 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0530sTUS051785;
 Wed, 3 Jun 2020 01:01:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : message-id : references : date : in-reply-to : mime-version :
 content-type; s=corp-2020-01-29;
 bh=3/STZ1SexWREBvXya0wbTc4mMqOFMgMJt3fHBvJ6Xvk=;
 b=AWJlgZGzySIv3D62CcQ4wK42T3+MtmHtpOEMbBF4Bey50Hdrx3qiu367Hol1Xdo8oy85
 2XLAPbnSclJzz53AjoGAyz2fubguWcpV6ydiJK7H15esEEKRp0SFlRkzwjTHOqoFkoeD
 oM9Vaz9N0dBHVX2iOrS30OXo4uIUSM9VfT52r3R4xgqdnecvNMDghKg0Ri2nIDVwYK3S
 q7j6D3YXSVm8kwyistCNsQ6NbQEAIzbZBajp/HiOSOBFSsLWbrXyGt7XTslswNFX8At6
 tuNKKpMAg4XaUXjTE/Iuk5YuM1R77o89/T+yi5b1h6oWRh+wmkN6URQ8qQOmAg0gBJS2 4g== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 31bfem6kfw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 03 Jun 2020 01:01:49 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0530w0kp182355;
 Wed, 3 Jun 2020 01:01:49 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 31dju2c62d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Jun 2020 01:01:49 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05311fRO017194;
 Wed, 3 Jun 2020 01:01:46 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 18:01:41 -0700
To: Chris Boot <bootc@bootc.net>
Subject: Re: [PATCH] sbp-target: add the missed kfree() in an error path
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1img99d4k.fsf@ca-mkp.ca.oracle.com>
References: <20200528102056.911825-1-hslester96@gmail.com>
 <475e4f50-6d20-d653-8288-0676bc708bcc@acm.org>
 <dcb29beb-0996-a141-89af-ac9c9c5fd5c0@bootc.net>
Date: Tue, 02 Jun 2020 21:01:38 -0400
In-Reply-To: <dcb29beb-0996-a141-89af-ac9c9c5fd5c0@bootc.net> (Chris Boot's
 message of "Thu, 28 May 2020 16:16:51 +0100")
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=885
 phishscore=0 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0
 suspectscore=1 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006030004
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=1
 mlxlogscore=927 priorityscore=1501 bulkscore=0 phishscore=0 clxscore=1011
 impostorscore=0 adultscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006030003
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jgHnO-006xEr-7r
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
Cc: target-devel@vger.kernel.org, Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Nicholas Bellinger <nab@linux-iscsi.org>, linux-scsi@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


Chris,

> I think you might be right. I also don't have much time to maintain it
> these days and the hardware I had is long dead.

In that case I'd appreciate a patch to remove it.

Thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
